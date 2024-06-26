'use strict';

export async function handler(event) {
  return {
    statusCode: 200,
    headers: {
      'Access-Control-Allow-Origin': '*'
    },
    body: JSON.stringify(
      {
        message: 'Lambda Fucnction Invoke Vayo Haita!'
      },
      null,
      2
    ),
  };
}