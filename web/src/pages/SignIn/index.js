import React from 'react';
import { useDispatch } from 'react-redux';
import { Form, Input } from '@rocketseat/unform';
import * as Yup from 'yup';

import { signInRequest } from '../../store/modules/auth/actions';

const schema = Yup.object().shape({
	email: Yup.string()
		.email('Insira um e-mail válido')
		.required('E-mail obrigatório'),
	password: Yup.string().required('Senha obrigatória'),
});

export default function SignIn() {
	const dispatch = useDispatch();

	function handleSubmit({ email, password }) {
		dispatch(signInRequest(email, password));
	}

	return (
		<>
			<Form schema={schema} onSubmit={handleSubmit}>
				<Input name="email" type="email" placeholder="E-mail" />
				<Input name="password" type="password" placeholder="Senha" />

				<button type="submit">Acessar</button>
			</Form>
		</>
	);
}
