function result = myFunction(input)
  % Check for invalid input
  if input < 0
    error('myFunction:NegativeInput', 'Input must be non-negative.  Input value was: %f', input);
  end
  % Add more robust error handling and checks here, e.g.,
  if ~isnumeric(input)
      error('myFunction:InvalidDataType','Input must be numeric.');
  end
  % ...Rest of the code...
end

% Example Usage
try
    result = myFunction(-5);
catch ME
    fprintf('Error: %s\n', ME.message);
    % Add more detailed error handling or logging here
end
try
    result = myFunction('abc');
catch ME
    fprintf('Error: %s\n', ME.message);
    % Add more detailed error handling or logging here
end