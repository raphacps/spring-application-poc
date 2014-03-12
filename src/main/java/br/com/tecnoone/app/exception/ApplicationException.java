package br.com.tecnoone.app.exception;

public class ApplicationException extends RuntimeException {

	private static final long serialVersionUID = 8517458302627983100L;

	public ApplicationException(String message, Throwable cause) {
		super(message, cause);
	}

	public ApplicationException(Throwable cause) {
		super(cause);
	}	
}
