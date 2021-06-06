




x = xlsread('F:\Users\saif\Desktop\dest raaf\matlab data.xlsx','Sheet1','C6:C12');
y = xlsread('F:\Users\saif\Desktop\dest raaf\matlab data.xlsx','Sheet1','D6:D12');
m = length(x);
n = 2;


A = zeros(n+1, n+1);
B = zeros(n+1, 1);
a = zeros(n+1, 1);

for row = 1 : n+1
  for col = 1 : n+1
    if row == 1 && col == 1
      A(row,col) = m;
      continue
    end
    A(row,col) = sum(x.^(row+col-2));
  end
  B(row) = sum(x.^(row-1).*y);
end

a = A \ B;

fprintf('=%.2f', a(1))
for i = 2:n+1
  fprintf ('+%.2f*A1^%d',a(i), i-1)
end
fprintf('\n')