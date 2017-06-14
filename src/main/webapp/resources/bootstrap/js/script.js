$(document).ready(function () {

	$('#loginForm').formValidation({
		framework: 'bootstrap',
		icon: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields: {
			username: {
				validators: {
					notEmpty: {
						message: 'Le pseudonyme est requis'
					}
				}
			},
			password: {
				validators: {
					notEmplty: {
						message: 'Le mot de passe est requis'
					}
				}
			}
		}
	});

	$('#RegisterForm').formValidation({
		framework: 'bootstrap',
		icon: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		addOns: {
			reCaptcha2: {
				element: 'captchaContainer',
				theme: 'light',
				siteKey: '6Lf1PxYTAAAAAHHK1-UiXyD9iOnfppdj3pIG20z6',
				timeout: 120,
				message: 'The captcha is not valid'
			}
		},

		fields: {
			userName: {
				validators: {
					notEmpty: {
						message: 'Le pseudonyme est requis'
					},
					stringLength: {
						min: 4,
						max: 20,
						message: 'Le nom doit être plus de 4 et moins de 20 caractères'
					},
					regexp: {
						regexp: /^[a-zA-Z0-9_\.]+$/,
						message: 'Le nom ne peut consister qu\'en alphabétique, nombre, des points et des tirets-bas'
					}
				}
			},

			firstName: {

				validators: {

					notEmpty: {
						message: 'Le nom est requis'
					}
				}
			},
			lastName: {

				validators: {
					notEmpty: {
						message: 'Le prénom est requis'
					}
				}
			},
			birthday: {
				validators: {
					notEmpty: {
						message: 'la date de naissance est requise'
					},
                    date: {
                    	format: 'DD/MM/YYYY',
                        message: 'The date of birth is not valid'
                    }
				}
			},
			passwordRegister: {
				validators: {
					notEmpty: {
						message: 'Le mot de passe est requis'
					},
					stringLength: {
						min: 6,
						max: 18,
						message: 'Le sujet doit être plus de 18 et moins de 6 caractères'
					},
					regexp: {
						message: 'Le mot de passe d\'utilisateur ne peut consister qu\'en alphabétique, nombre, des points et des tirets-bas',
						regexp: /^[a-zA-Z0-9_\.]+$/
					},
					identical: {
						field: 'confirmation',
						message: 'Le mot de passe et sa confirmation ne sont pas identiques'
					}
				}
			},
			confirmation: {
				validators: {
					notEmpty: {
						message: 'La confirmation est requis'
					},
					identical: {
						field: 'passwordRegister',
						message: 'Le mot de passe et sa confirmation ne sont pas identiques'
					}
				}
			},
			gouvernorat: {

				validators: {
					notEmpty: {
						message: 'Le Gouvernorat est requis'

					}
				}
			},
			delegation: {
				validators: {
					notEmpty: {
						message: 'Le Delegation est requis'

					}
				}
			},
			sex: {
				validators: {
					notEmpty: {
						message: 'Veuiller choisir votre sex'

					}
				}
			},
			address1: {
				validators: {
					notEmpty: {
						message: 'Veuiller entrer une addresse'

					}
				}
			},
			email: {
				validators: {
					notEmpty: {
						message: 'L\'addresse email  est requis'
					},
					emailAddress: {
						message: 'L\'entrée n\'est pas une adresse email valide'
					}
				}
			},
			phoneNumber: {

				validators: {
					notEmpty: {
						message: 'Le numéro de téléphone est requis'
					},
					regexp: {
						message: 'Le numéro de téléphone ne peut contenir que des chiffres, des espaces, -, (,), + et.',
						regexp: /^[0-9\s\-()+\.]+$/
					}
				}
			},
			captchaContainer: {

				validators: {
					notEmpty: {
						message: 'Le Captcha est requis'

					}
				}
			}
		}

	}).find('[name="birthday"]')
    .datepicker({
        onSelect: function(date, inst) {
            // Revalidate the field when choosing it from the datepicker
            $('#RegisterForm').formValidation('revalidateField', 'birthday');
        }
    });

	//Password Alter


	$('#passwordAlter').formValidation({
		framework: 'bootstrap',
		icon: {
			valid: 'glyphicon glyphicon-ok',
			invalid: 'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		addOns: {
			reCaptcha2: {
				element: 'captchaContainer',
				theme: 'light',
				siteKey: '6Lf1PxYTAAAAAHHK1-UiXyD9iOnfppdj3pIG20z6',
				timeout: 120,
				message: 'The captcha is not valid'
			}
		},
		fields: {
			NewPassword: {
				validators: {
					notEmpty: {
						message: 'Le neauveau mot de passe est requis'
					},
					regexp: {
						message: 'Le mot de passe d\'utilisateur ne peut consister qu\'en alphabétique, nombre, des points et des tirets-bas',
						regexp: /^[a-zA-Z0-9_\.]+$/
					},
					identical: {
						field: 'confirmation',
						message: 'Le mot de passe et sa confirmation ne sont pas identiques'
					}
				}
			},
			confirmation: {

				validators: {
					notEmpty: {
						message: 'La confirmation est requise'
					},
					identical: {
						field: 'NewPassword',
						message: 'Le mot de passe et sa confirmation ne sont pas identiques'
					}
				}
			},
			captchaContainer: {
				validators: {
					notEmpty: {
						message: 'Le Captcha est requis'
					}
				}
			}
		}

	});
	
	
	// CreditCard Validation 
	
	 $('#ticketPayement').formValidation({
	        framework: 'bootstrap',
	        icon: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        	NBTickets: {
					validators: {
						notEmpty: {
							message: 'Veuiller choisir des tickets'
						}
					}
				},
				Shipping: {
					validators: {
						notEmpty: {
							message: 'Veuiller choisir un mode de livraison'
						}
					}
				},
				shippementAdress: {
					validators: {
						notEmpty: {
							message: 'L\'adresse de livraison est requis'
						}
					}
				},
				purchase: {
					validators: {
						notEmpty: {
							message: 'Veuiller choisir un mode de payement'
						}
					}
				},
				PhoneNum: {
					validators: {
						notEmpty: {
							message: 'Le numéro de téléphone est requis'
						},
						regexp: {
							message: 'Le numéro de téléphone ne peut contenir que des chiffres, des espaces, -, (,), + et.',
							regexp: /^[0-9\s\-()+\.]+$/
						}
					}
				},
				CreditCardType: {
					validators: {
						notEmpty: {
							message: 'Veuiller choisir un type de carte bacaire'
						}
					}
				},
				CreditCardNum: {
	                validators: {
	                    creditCard: {
	                        message: 'La carte bancaire n\' est pas valide'
	                    }
	                }
	            },
	            
	            month: {
					validators: {
						notEmpty: {
							message: 'Le mois est requis'
						},
						stringLength: {
							min: 2,
							max: 2,
							message: 'Le mois doit être 2 chiffres'
						},
						regexp: {
							regexp: /^[0-9]/,
							message: 'Le mois ne peut consister qu\'en nombre'
						}
					}
				},
	            year: {
					validators: {
						notEmpty: {
							message: 'L\'année est requise'
						},
						stringLength: {
							min: 2,
							max: 2,
							message: 'L\'année doit être 2 chiffres'
						}
					}
				}
				,
	            csc: {
	                validators: {
	                    cvv: {
	                        creditCardField: 'CreditCardNum',
	                        message: 'Le numéro CVV n\'est pas valide'
	                    }
	                }
	            
				},
				captchaContainer: {
					validators: {
						notEmpty: {
							message: 'Le Captcha est requis'
						}
					}
				}
	            
	        }
	    });
	 
	 $('#match').formValidation({
			framework: 'bootstrap',
			icon: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			addOns: {
				reCaptcha2: {
					element: 'captchaContainer',
					theme: 'light',
					siteKey: '6Lf1PxYTAAAAAHHK1-UiXyD9iOnfppdj3pIG20z6',
					timeout: 120,
					message: 'The captcha is not valid'
				}
			},
			fields: {
				teamHome: {
						validators: {
							notEmpty: {
								message: 'L\'équipe maison est requis'
							}
						}
			    },
				teamAway: {
						validators: {
							notEmpty: {
								message: 'L\'équipe extérieur est requis'
							}
						}
			    },
			    stadiumMatch: {
						validators: {
							notEmpty: {
								message: 'Le stade est requis'
							}
						}
			    },
				matchDate: {
					validators: {
						notEmpty: {
							message: 'La date de match est requise'
						}/*,
	                    date: {
	                    	format: 'MM/DD/YYYY h:m',
	                        message: 'La date de match n\'est pas valide'
	                    }*/
					}
				},
				seat: {
						validators: {
							notEmpty: {
								message: 'La place est requise'
							}
						}
			    },
			    nbTickets: {
					validators: {
						notEmpty: {
							message: 'Le nombre des tickets est requis'
						},
						regexp: {
							message: 'Le nombre des tickets ne peut contenir que des chiffres',
							regexp: /^\d[0-9]/
						}
					}
				},
				ticketPrice: {
					validators: {
						notEmpty: {
							message: 'Le prix d\'un ticket est requis'
						},
						regexp: {
							message: 'Le prix d\'un ticket ne peut contenir que des chiffres et un . ou ,',
							regexp: /^\d[0-9]/
						}
					}
				},
				captchaContainer: {
					validators: {
						notEmpty: {
							message: 'Le Captcha est requis'
						}
					}
				}
			}
	 	});
	 
	 $('#sendMail').formValidation({
			framework: 'bootstrap',
			icon: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			addOns: {
				reCaptcha2: {
					element: 'captchaContainer',
					theme: 'light',
					siteKey: '6Lf1PxYTAAAAAHHK1-UiXyD9iOnfppdj3pIG20z6',
					timeout: 120,
					message: 'The captcha is not valid'
				}
			},
			fields: {
				name: {
					validators: {
						notEmpty: {
							message: 'Le nom est requis'
						},
						stringLength: {
							min: 3,
							max: 20,
							message: 'Le nom doit être plus de 3 et moins de 30 caractères'
						},
						regexp: {
							regexp: /^[a-zA-Z]+$/,
							message: 'Le nom ne peut consister qu\'en alphabétique'
						}
					}
				},
				email: {
					validators: {
						notEmpty: {
							message: 'L\'addresse email  est requis'
						},
						emailAddress: {
							message: 'L\'entrée n\'est pas une adresse email valide'
						}
					}
				},
				subject: {
					validators: {
						notEmpty: {
							message: 'Le sujet est requis'
						},
						stringLength: {
							min: 3,
							max: 20,
							message: 'Le sujet doit être plus de 20 et moins de 3 caractères'
						},
						regexp: {
							regexp: /^[a-zA-Z]+$/,
							message: 'Le sujet ne peut consister qu\'en alphabétique'
						}
					}
				},
				message: {
					validators: {
						notEmpty: {
							message: 'Le sujet est requis'
						},
						stringLength: {
							min: 10,
							max: 100,
							message: 'Le sujet doit être plus de 100 et moins de 10 caractères'
						},
						regexp: {
							regexp: /^[a-zA-Z]+$/,
							message: 'Le sujet ne peut consister ne peut consister qu\'en alphabétique, nombre, des points et des tirets-bas'
						}
					}
				},
				captchaContainer: {
					validators: {
						notEmpty: {
							message: 'Le Captcha est requis'
						}
					}
				}
			}
	 });

	//reset Button
	$('#resetButton').on('click', function () {
		// Reset the recaptcha
		FormValidation.AddOn.reCaptcha2.reset('captchaContainer');

		// Reset form
		$('#RegisterForm').formValidation('resetForm', true);
	});
	$('#resetButton').on('click', function () {
		// Reset the recaptcha
		FormValidation.AddOn.reCaptcha2.reset('captchaContainer');

		// Reset form
		$('#passwordAlter').formValidation('resetForm', true);
	});
	$('#resetButton').on('click', function () {
		// Reset the recaptcha
		FormValidation.AddOn.reCaptcha2.reset('captchaContainer');

		// Reset form
		$('#ticketPayement').formValidation('resetForm', true);
	});
	$('#resetButton').on('click', function () {
		// Reset the recaptcha
		FormValidation.AddOn.reCaptcha2.reset('captchaContainer');

		// Reset form
		$('#match').formValidation('resetForm', true);
	});

	/*$(function () {
		$('a.read_more').click(function (event) { 
			event.preventDefault(); 
			$(this).parents('.item').find('.more_text').show(); 
		});

	});*/
	
	$(".morelink").click(function () {
		if ($(this).hasClass("moins")) {
			$(this).removeClass("moins");
			$(this).html("lire plus");
		} else {
			$(this).addClass("moins");
			$(this).html("moins");
		}
		$(this).parent().prev().toggle();
		$(this).prev().toggle();
		return false;
	});

	$('#NBTickets').on('change', function() {
		var nbTickets=this.value;
		var ticketPrice=$('#ticketPrice').val();
		var total = nbTickets * ticketPrice;
		$("#totalPrice").val(total);
	});
	
	$("#purchase").change(function () {
		$("select option:selected").each(function () {
			if ($(this).attr("value") == "Mobi") {
				$("#PhoneNum").show();
				$("#CreditCardType").hide();
				$("#CreditCardNum").hide();
				$("#expiration").hide();
				$("#CSC").hide();
			}
			if ($(this).attr("value") == "CreditCard") {
				$("#PhoneNum").hide();
				$("#CreditCardType").show();
				$("#CreditCardNum").show();
				$("#expiration").show();
				$("#CSC").show();
			}
		});
	}).change();
	
	jQuery.datetimepicker.setLocale('fr');
	$('#matchDate').datetimepicker({
		format:'d/m/Y H:i',
		validateOnBlur:true
	}); 
	
	/*$(function () {
		$('#ShowInnacifUsers').click(function () {
			$('#innactifUsers').show();
			return false;
		});
	});*/
	
});

/*window.onload = function() {
    if (window.jQuery) {  
        // jQuery is loaded  
        alert("Yeah!");
    } else {
        // jQuery is not loaded
        alert("Doesn't Work");
    }
}*/
