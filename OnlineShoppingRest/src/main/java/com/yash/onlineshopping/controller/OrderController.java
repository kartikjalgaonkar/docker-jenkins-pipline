package com.yash.onlineshopping.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yash.onlineshopping.model.OrdersModel;
import com.yash.onlineshopping.service.OrderService;
import com.yash.onlineshopping.util.RecordNotFoundException;

@RestController
@RequestMapping(value = { "/order" })
public class OrderController {

	@Autowired
	private OrderService orderService;

	@GetMapping(value = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<OrdersModel> getOrderById(@PathVariable("id") int id) {
		OrdersModel order = orderService.findById(id);
		if (order == null) {
			throw new RecordNotFoundException("id-" + id);
		}
		return new ResponseEntity<OrdersModel>(order, HttpStatus.OK);
	}

	@PostMapping(value = "/orderplace/{customerId}", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<OrdersModel>> getUserById(@PathVariable("customerId") int customerId,
			@RequestBody List<OrdersModel> orders) {
		if (orders.size() > 0) {
			orders = orderService.bookOrder(orders, customerId);
		}

		return new ResponseEntity<List<OrdersModel>>(orders, HttpStatus.OK);
	}

}
