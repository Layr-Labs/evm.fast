import InitECandidate.Proofs.ClashStages713.Proof19
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree1920_agree : tree1920 = literal1920 := by
  rw [tree1920_def, tree1918_agree, tree1919_agree]
  rfl
theorem node1920_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1920 live1920 coloured1920 = result1920 := by
  rw [tree1920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1918_eq
  unfold live1918 coloured1918 at child
  try dsimp only [live1920, coloured1920]
  rw [child]
  dsimp only [result1918]
  have child := node1919_eq
  unfold live1919 coloured1919 at child
  try dsimp only [live1920, coloured1920]
  rw [child]
  dsimp only [result1919]
  try dsimp only [colour, result1920]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1921_agree : tree1921 = literal1921 := by
  rw [tree1921_def]
  rfl
theorem node1921_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1921 live1921 coloured1921 = result1921 := by
  rw [tree1921_def]
  try dsimp only [colour, result1921]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1922_agree : tree1922 = literal1922 := by
  rw [tree1922_def, tree1920_agree, tree1921_agree]
  rfl
theorem node1922_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1922 live1922 coloured1922 = result1922 := by
  rw [tree1922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1920_eq
  unfold live1920 coloured1920 at child
  try dsimp only [live1922, coloured1922]
  rw [child]
  dsimp only [result1920]
  have child := node1921_eq
  unfold live1921 coloured1921 at child
  try dsimp only [live1922, coloured1922]
  rw [child]
  dsimp only [result1921]
  try dsimp only [colour, result1922]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1923_agree : tree1923 = literal1923 := by
  rw [tree1923_def]
  rfl
theorem node1923_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1923 live1923 coloured1923 = result1923 := by
  rw [tree1923_def]
  try dsimp only [colour, result1923]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1924_agree : tree1924 = literal1924 := by
  rw [tree1924_def, tree1922_agree, tree1923_agree]
  rfl
theorem node1924_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1924 live1924 coloured1924 = result1924 := by
  rw [tree1924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1922_eq
  unfold live1922 coloured1922 at child
  try dsimp only [live1924, coloured1924]
  rw [child]
  dsimp only [result1922]
  have child := node1923_eq
  unfold live1923 coloured1923 at child
  try dsimp only [live1924, coloured1924]
  rw [child]
  dsimp only [result1923]
  try dsimp only [colour, result1924]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1925_agree : tree1925 = literal1925 := by
  rw [tree1925_def]
  rfl
theorem node1925_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1925 live1925 coloured1925 = result1925 := by
  rw [tree1925_def]
  try dsimp only [colour, result1925]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1926_agree : tree1926 = literal1926 := by
  rw [tree1926_def, tree1924_agree, tree1925_agree]
  rfl
theorem node1926_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1926 live1926 coloured1926 = result1926 := by
  rw [tree1926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1924_eq
  unfold live1924 coloured1924 at child
  try dsimp only [live1926, coloured1926]
  rw [child]
  dsimp only [result1924]
  have child := node1925_eq
  unfold live1925 coloured1925 at child
  try dsimp only [live1926, coloured1926]
  rw [child]
  dsimp only [result1925]
  try dsimp only [colour, result1926]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1927_agree : tree1927 = literal1927 := by
  rw [tree1927_def]
  rfl
theorem node1927_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1927 live1927 coloured1927 = result1927 := by
  rw [tree1927_def]
  try dsimp only [colour, result1927]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1928_agree : tree1928 = literal1928 := by
  rw [tree1928_def, tree1926_agree, tree1927_agree]
  rfl
theorem node1928_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1928 live1928 coloured1928 = result1928 := by
  rw [tree1928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1926_eq
  unfold live1926 coloured1926 at child
  try dsimp only [live1928, coloured1928]
  rw [child]
  dsimp only [result1926]
  have child := node1927_eq
  unfold live1927 coloured1927 at child
  try dsimp only [live1928, coloured1928]
  rw [child]
  dsimp only [result1927]
  try dsimp only [colour, result1928]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1929_agree : tree1929 = literal1929 := by
  rw [tree1929_def]
  rfl
theorem node1929_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1929 live1929 coloured1929 = result1929 := by
  rw [tree1929_def]
  try dsimp only [colour, result1929]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1930_agree : tree1930 = literal1930 := by
  rw [tree1930_def, tree1928_agree, tree1929_agree]
  rfl
theorem node1930_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1930 live1930 coloured1930 = result1930 := by
  rw [tree1930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1928_eq
  unfold live1928 coloured1928 at child
  try dsimp only [live1930, coloured1930]
  rw [child]
  dsimp only [result1928]
  have child := node1929_eq
  unfold live1929 coloured1929 at child
  try dsimp only [live1930, coloured1930]
  rw [child]
  dsimp only [result1929]
  try dsimp only [colour, result1930]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1931_agree : tree1931 = literal1931 := by
  rw [tree1931_def]
  rfl
theorem node1931_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1931 live1931 coloured1931 = result1931 := by
  rw [tree1931_def]
  try dsimp only [colour, result1931]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1932_agree : tree1932 = literal1932 := by
  rw [tree1932_def, tree1930_agree, tree1931_agree]
  rfl
theorem node1932_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1932 live1932 coloured1932 = result1932 := by
  rw [tree1932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1930_eq
  unfold live1930 coloured1930 at child
  try dsimp only [live1932, coloured1932]
  rw [child]
  dsimp only [result1930]
  have child := node1931_eq
  unfold live1931 coloured1931 at child
  try dsimp only [live1932, coloured1932]
  rw [child]
  dsimp only [result1931]
  try dsimp only [colour, result1932]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1933_agree : tree1933 = literal1933 := by
  rw [tree1933_def]
  rfl
theorem node1933_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1933 live1933 coloured1933 = result1933 := by
  rw [tree1933_def]
  try dsimp only [colour, result1933]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1934_agree : tree1934 = literal1934 := by
  rw [tree1934_def, tree1932_agree, tree1933_agree]
  rfl
theorem node1934_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1934 live1934 coloured1934 = result1934 := by
  rw [tree1934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1932_eq
  unfold live1932 coloured1932 at child
  try dsimp only [live1934, coloured1934]
  rw [child]
  dsimp only [result1932]
  have child := node1933_eq
  unfold live1933 coloured1933 at child
  try dsimp only [live1934, coloured1934]
  rw [child]
  dsimp only [result1933]
  try dsimp only [colour, result1934]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1935_agree : tree1935 = literal1935 := by
  rw [tree1935_def]
  rfl
theorem node1935_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1935 live1935 coloured1935 = result1935 := by
  rw [tree1935_def]
  try dsimp only [colour, result1935]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1936_agree : tree1936 = literal1936 := by
  rw [tree1936_def, tree1934_agree, tree1935_agree]
  rfl
theorem node1936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1936 live1936 coloured1936 = result1936 := by
  rw [tree1936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1934_eq
  unfold live1934 coloured1934 at child
  try dsimp only [live1936, coloured1936]
  rw [child]
  dsimp only [result1934]
  have child := node1935_eq
  unfold live1935 coloured1935 at child
  try dsimp only [live1936, coloured1936]
  rw [child]
  dsimp only [result1935]
  try dsimp only [colour, result1936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1937_agree : tree1937 = literal1937 := by
  rw [tree1937_def]
  rfl
theorem node1937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1937 live1937 coloured1937 = result1937 := by
  rw [tree1937_def]
  try dsimp only [colour, result1937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1938_agree : tree1938 = literal1938 := by
  rw [tree1938_def, tree1936_agree, tree1937_agree]
  rfl
theorem node1938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1938 live1938 coloured1938 = result1938 := by
  rw [tree1938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1936_eq
  unfold live1936 coloured1936 at child
  try dsimp only [live1938, coloured1938]
  rw [child]
  dsimp only [result1936]
  have child := node1937_eq
  unfold live1937 coloured1937 at child
  try dsimp only [live1938, coloured1938]
  rw [child]
  dsimp only [result1937]
  try dsimp only [colour, result1938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1939_agree : tree1939 = literal1939 := by
  rw [tree1939_def]
  rfl
theorem node1939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1939 live1939 coloured1939 = result1939 := by
  rw [tree1939_def]
  try dsimp only [colour, result1939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1940_agree : tree1940 = literal1940 := by
  rw [tree1940_def, tree1938_agree, tree1939_agree]
  rfl
theorem node1940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1940 live1940 coloured1940 = result1940 := by
  rw [tree1940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1938_eq
  unfold live1938 coloured1938 at child
  try dsimp only [live1940, coloured1940]
  rw [child]
  dsimp only [result1938]
  have child := node1939_eq
  unfold live1939 coloured1939 at child
  try dsimp only [live1940, coloured1940]
  rw [child]
  dsimp only [result1939]
  try dsimp only [colour, result1940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1941_agree : tree1941 = literal1941 := by
  rw [tree1941_def]
  rfl
theorem node1941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1941 live1941 coloured1941 = result1941 := by
  rw [tree1941_def]
  try dsimp only [colour, result1941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1942_agree : tree1942 = literal1942 := by
  rw [tree1942_def, tree1940_agree, tree1941_agree]
  rfl
theorem node1942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1942 live1942 coloured1942 = result1942 := by
  rw [tree1942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1940_eq
  unfold live1940 coloured1940 at child
  try dsimp only [live1942, coloured1942]
  rw [child]
  dsimp only [result1940]
  have child := node1941_eq
  unfold live1941 coloured1941 at child
  try dsimp only [live1942, coloured1942]
  rw [child]
  dsimp only [result1941]
  try dsimp only [colour, result1942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1943_agree : tree1943 = literal1943 := by
  rw [tree1943_def]
  rfl
theorem node1943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1943 live1943 coloured1943 = result1943 := by
  rw [tree1943_def]
  try dsimp only [colour, result1943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1944_agree : tree1944 = literal1944 := by
  rw [tree1944_def, tree1942_agree, tree1943_agree]
  rfl
theorem node1944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1944 live1944 coloured1944 = result1944 := by
  rw [tree1944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1942_eq
  unfold live1942 coloured1942 at child
  try dsimp only [live1944, coloured1944]
  rw [child]
  dsimp only [result1942]
  have child := node1943_eq
  unfold live1943 coloured1943 at child
  try dsimp only [live1944, coloured1944]
  rw [child]
  dsimp only [result1943]
  try dsimp only [colour, result1944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1945_agree : tree1945 = literal1945 := by
  rw [tree1945_def]
  rfl
theorem node1945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1945 live1945 coloured1945 = result1945 := by
  rw [tree1945_def]
  try dsimp only [colour, result1945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1946_agree : tree1946 = literal1946 := by
  rw [tree1946_def, tree1944_agree, tree1945_agree]
  rfl
theorem node1946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1946 live1946 coloured1946 = result1946 := by
  rw [tree1946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1944_eq
  unfold live1944 coloured1944 at child
  try dsimp only [live1946, coloured1946]
  rw [child]
  dsimp only [result1944]
  have child := node1945_eq
  unfold live1945 coloured1945 at child
  try dsimp only [live1946, coloured1946]
  rw [child]
  dsimp only [result1945]
  try dsimp only [colour, result1946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1947_agree : tree1947 = literal1947 := by
  rw [tree1947_def]
  rfl
theorem node1947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1947 live1947 coloured1947 = result1947 := by
  rw [tree1947_def]
  try dsimp only [colour, result1947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1948_agree : tree1948 = literal1948 := by
  rw [tree1948_def, tree1946_agree, tree1947_agree]
  rfl
theorem node1948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1948 live1948 coloured1948 = result1948 := by
  rw [tree1948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1946_eq
  unfold live1946 coloured1946 at child
  try dsimp only [live1948, coloured1948]
  rw [child]
  dsimp only [result1946]
  have child := node1947_eq
  unfold live1947 coloured1947 at child
  try dsimp only [live1948, coloured1948]
  rw [child]
  dsimp only [result1947]
  try dsimp only [colour, result1948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1949_agree : tree1949 = literal1949 := by
  rw [tree1949_def]
  rfl
theorem node1949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1949 live1949 coloured1949 = result1949 := by
  rw [tree1949_def]
  try dsimp only [colour, result1949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1950_agree : tree1950 = literal1950 := by
  rw [tree1950_def, tree1948_agree, tree1949_agree]
  rfl
theorem node1950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1950 live1950 coloured1950 = result1950 := by
  rw [tree1950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1948_eq
  unfold live1948 coloured1948 at child
  try dsimp only [live1950, coloured1950]
  rw [child]
  dsimp only [result1948]
  have child := node1949_eq
  unfold live1949 coloured1949 at child
  try dsimp only [live1950, coloured1950]
  rw [child]
  dsimp only [result1949]
  try dsimp only [colour, result1950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1951_agree : tree1951 = literal1951 := by
  rw [tree1951_def]
  rfl
theorem node1951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1951 live1951 coloured1951 = result1951 := by
  rw [tree1951_def]
  try dsimp only [colour, result1951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1952_agree : tree1952 = literal1952 := by
  rw [tree1952_def, tree1950_agree, tree1951_agree]
  rfl
theorem node1952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1952 live1952 coloured1952 = result1952 := by
  rw [tree1952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1950_eq
  unfold live1950 coloured1950 at child
  try dsimp only [live1952, coloured1952]
  rw [child]
  dsimp only [result1950]
  have child := node1951_eq
  unfold live1951 coloured1951 at child
  try dsimp only [live1952, coloured1952]
  rw [child]
  dsimp only [result1951]
  try dsimp only [colour, result1952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1953_agree : tree1953 = literal1953 := by
  rw [tree1953_def]
  rfl
theorem node1953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1953 live1953 coloured1953 = result1953 := by
  rw [tree1953_def]
  try dsimp only [colour, result1953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1954_agree : tree1954 = literal1954 := by
  rw [tree1954_def, tree1952_agree, tree1953_agree]
  rfl
theorem node1954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1954 live1954 coloured1954 = result1954 := by
  rw [tree1954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1952_eq
  unfold live1952 coloured1952 at child
  try dsimp only [live1954, coloured1954]
  rw [child]
  dsimp only [result1952]
  have child := node1953_eq
  unfold live1953 coloured1953 at child
  try dsimp only [live1954, coloured1954]
  rw [child]
  dsimp only [result1953]
  try dsimp only [colour, result1954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1955_agree : tree1955 = literal1955 := by
  rw [tree1955_def]
  rfl
theorem node1955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1955 live1955 coloured1955 = result1955 := by
  rw [tree1955_def]
  try dsimp only [colour, result1955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1956_agree : tree1956 = literal1956 := by
  rw [tree1956_def, tree1954_agree, tree1955_agree]
  rfl
theorem node1956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1956 live1956 coloured1956 = result1956 := by
  rw [tree1956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1954_eq
  unfold live1954 coloured1954 at child
  try dsimp only [live1956, coloured1956]
  rw [child]
  dsimp only [result1954]
  have child := node1955_eq
  unfold live1955 coloured1955 at child
  try dsimp only [live1956, coloured1956]
  rw [child]
  dsimp only [result1955]
  try dsimp only [colour, result1956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1957_agree : tree1957 = literal1957 := by
  rw [tree1957_def]
  rfl
theorem node1957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1957 live1957 coloured1957 = result1957 := by
  rw [tree1957_def]
  try dsimp only [colour, result1957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1958_agree : tree1958 = literal1958 := by
  rw [tree1958_def, tree1956_agree, tree1957_agree]
  rfl
theorem node1958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1958 live1958 coloured1958 = result1958 := by
  rw [tree1958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1956_eq
  unfold live1956 coloured1956 at child
  try dsimp only [live1958, coloured1958]
  rw [child]
  dsimp only [result1956]
  have child := node1957_eq
  unfold live1957 coloured1957 at child
  try dsimp only [live1958, coloured1958]
  rw [child]
  dsimp only [result1957]
  try dsimp only [colour, result1958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1959_agree : tree1959 = literal1959 := by
  rw [tree1959_def]
  rfl
theorem node1959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1959 live1959 coloured1959 = result1959 := by
  rw [tree1959_def]
  try dsimp only [colour, result1959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1960_agree : tree1960 = literal1960 := by
  rw [tree1960_def, tree1958_agree, tree1959_agree]
  rfl
theorem node1960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1960 live1960 coloured1960 = result1960 := by
  rw [tree1960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1958_eq
  unfold live1958 coloured1958 at child
  try dsimp only [live1960, coloured1960]
  rw [child]
  dsimp only [result1958]
  have child := node1959_eq
  unfold live1959 coloured1959 at child
  try dsimp only [live1960, coloured1960]
  rw [child]
  dsimp only [result1959]
  try dsimp only [colour, result1960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1961_agree : tree1961 = literal1961 := by
  rw [tree1961_def]
  rfl
theorem node1961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1961 live1961 coloured1961 = result1961 := by
  rw [tree1961_def]
  try dsimp only [colour, result1961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1962_agree : tree1962 = literal1962 := by
  rw [tree1962_def, tree1960_agree, tree1961_agree]
  rfl
theorem node1962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1962 live1962 coloured1962 = result1962 := by
  rw [tree1962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1960_eq
  unfold live1960 coloured1960 at child
  try dsimp only [live1962, coloured1962]
  rw [child]
  dsimp only [result1960]
  have child := node1961_eq
  unfold live1961 coloured1961 at child
  try dsimp only [live1962, coloured1962]
  rw [child]
  dsimp only [result1961]
  try dsimp only [colour, result1962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1963_agree : tree1963 = literal1963 := by
  rw [tree1963_def]
  rfl
theorem node1963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1963 live1963 coloured1963 = result1963 := by
  rw [tree1963_def]
  try dsimp only [colour, result1963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1964_agree : tree1964 = literal1964 := by
  rw [tree1964_def, tree1962_agree, tree1963_agree]
  rfl
theorem node1964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1964 live1964 coloured1964 = result1964 := by
  rw [tree1964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1962_eq
  unfold live1962 coloured1962 at child
  try dsimp only [live1964, coloured1964]
  rw [child]
  dsimp only [result1962]
  have child := node1963_eq
  unfold live1963 coloured1963 at child
  try dsimp only [live1964, coloured1964]
  rw [child]
  dsimp only [result1963]
  try dsimp only [colour, result1964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1965_agree : tree1965 = literal1965 := by
  rw [tree1965_def]
  rfl
theorem node1965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1965 live1965 coloured1965 = result1965 := by
  rw [tree1965_def]
  try dsimp only [colour, result1965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1966_agree : tree1966 = literal1966 := by
  rw [tree1966_def, tree1964_agree, tree1965_agree]
  rfl
theorem node1966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1966 live1966 coloured1966 = result1966 := by
  rw [tree1966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1964_eq
  unfold live1964 coloured1964 at child
  try dsimp only [live1966, coloured1966]
  rw [child]
  dsimp only [result1964]
  have child := node1965_eq
  unfold live1965 coloured1965 at child
  try dsimp only [live1966, coloured1966]
  rw [child]
  dsimp only [result1965]
  try dsimp only [colour, result1966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1967_agree : tree1967 = literal1967 := by
  rw [tree1967_def]
  rfl
theorem node1967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1967 live1967 coloured1967 = result1967 := by
  rw [tree1967_def]
  try dsimp only [colour, result1967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1968_agree : tree1968 = literal1968 := by
  rw [tree1968_def, tree1966_agree, tree1967_agree]
  rfl
theorem node1968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1968 live1968 coloured1968 = result1968 := by
  rw [tree1968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1966_eq
  unfold live1966 coloured1966 at child
  try dsimp only [live1968, coloured1968]
  rw [child]
  dsimp only [result1966]
  have child := node1967_eq
  unfold live1967 coloured1967 at child
  try dsimp only [live1968, coloured1968]
  rw [child]
  dsimp only [result1967]
  try dsimp only [colour, result1968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1969_agree : tree1969 = literal1969 := by
  rw [tree1969_def]
  rfl
theorem node1969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1969 live1969 coloured1969 = result1969 := by
  rw [tree1969_def]
  try dsimp only [colour, result1969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1970_agree : tree1970 = literal1970 := by
  rw [tree1970_def, tree1968_agree, tree1969_agree]
  rfl
theorem node1970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1970 live1970 coloured1970 = result1970 := by
  rw [tree1970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1968_eq
  unfold live1968 coloured1968 at child
  try dsimp only [live1970, coloured1970]
  rw [child]
  dsimp only [result1968]
  have child := node1969_eq
  unfold live1969 coloured1969 at child
  try dsimp only [live1970, coloured1970]
  rw [child]
  dsimp only [result1969]
  try dsimp only [colour, result1970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1971_agree : tree1971 = literal1971 := by
  rw [tree1971_def]
  rfl
theorem node1971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1971 live1971 coloured1971 = result1971 := by
  rw [tree1971_def]
  try dsimp only [colour, result1971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1972_agree : tree1972 = literal1972 := by
  rw [tree1972_def, tree1970_agree, tree1971_agree]
  rfl
theorem node1972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1972 live1972 coloured1972 = result1972 := by
  rw [tree1972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1970_eq
  unfold live1970 coloured1970 at child
  try dsimp only [live1972, coloured1972]
  rw [child]
  dsimp only [result1970]
  have child := node1971_eq
  unfold live1971 coloured1971 at child
  try dsimp only [live1972, coloured1972]
  rw [child]
  dsimp only [result1971]
  try dsimp only [colour, result1972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1973_agree : tree1973 = literal1973 := by
  rw [tree1973_def]
  rfl
theorem node1973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1973 live1973 coloured1973 = result1973 := by
  rw [tree1973_def]
  try dsimp only [colour, result1973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1974_agree : tree1974 = literal1974 := by
  rw [tree1974_def, tree1972_agree, tree1973_agree]
  rfl
theorem node1974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1974 live1974 coloured1974 = result1974 := by
  rw [tree1974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1972_eq
  unfold live1972 coloured1972 at child
  try dsimp only [live1974, coloured1974]
  rw [child]
  dsimp only [result1972]
  have child := node1973_eq
  unfold live1973 coloured1973 at child
  try dsimp only [live1974, coloured1974]
  rw [child]
  dsimp only [result1973]
  try dsimp only [colour, result1974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1975_agree : tree1975 = literal1975 := by
  rw [tree1975_def]
  rfl
theorem node1975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1975 live1975 coloured1975 = result1975 := by
  rw [tree1975_def]
  try dsimp only [colour, result1975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1976_agree : tree1976 = literal1976 := by
  rw [tree1976_def, tree1974_agree, tree1975_agree]
  rfl
theorem node1976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1976 live1976 coloured1976 = result1976 := by
  rw [tree1976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1974_eq
  unfold live1974 coloured1974 at child
  try dsimp only [live1976, coloured1976]
  rw [child]
  dsimp only [result1974]
  have child := node1975_eq
  unfold live1975 coloured1975 at child
  try dsimp only [live1976, coloured1976]
  rw [child]
  dsimp only [result1975]
  try dsimp only [colour, result1976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1977_agree : tree1977 = literal1977 := by
  rw [tree1977_def]
  rfl
theorem node1977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1977 live1977 coloured1977 = result1977 := by
  rw [tree1977_def]
  try dsimp only [colour, result1977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1978_agree : tree1978 = literal1978 := by
  rw [tree1978_def, tree1976_agree, tree1977_agree]
  rfl
theorem node1978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1978 live1978 coloured1978 = result1978 := by
  rw [tree1978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1976_eq
  unfold live1976 coloured1976 at child
  try dsimp only [live1978, coloured1978]
  rw [child]
  dsimp only [result1976]
  have child := node1977_eq
  unfold live1977 coloured1977 at child
  try dsimp only [live1978, coloured1978]
  rw [child]
  dsimp only [result1977]
  try dsimp only [colour, result1978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1979_agree : tree1979 = literal1979 := by
  rw [tree1979_def]
  rfl
theorem node1979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1979 live1979 coloured1979 = result1979 := by
  rw [tree1979_def]
  try dsimp only [colour, result1979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1980_agree : tree1980 = literal1980 := by
  rw [tree1980_def, tree1978_agree, tree1979_agree]
  rfl
theorem node1980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1980 live1980 coloured1980 = result1980 := by
  rw [tree1980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1978_eq
  unfold live1978 coloured1978 at child
  try dsimp only [live1980, coloured1980]
  rw [child]
  dsimp only [result1978]
  have child := node1979_eq
  unfold live1979 coloured1979 at child
  try dsimp only [live1980, coloured1980]
  rw [child]
  dsimp only [result1979]
  try dsimp only [colour, result1980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1981_agree : tree1981 = literal1981 := by
  rw [tree1981_def]
  rfl
theorem node1981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1981 live1981 coloured1981 = result1981 := by
  rw [tree1981_def]
  try dsimp only [colour, result1981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1982_agree : tree1982 = literal1982 := by
  rw [tree1982_def, tree1980_agree, tree1981_agree]
  rfl
theorem node1982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1982 live1982 coloured1982 = result1982 := by
  rw [tree1982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1980_eq
  unfold live1980 coloured1980 at child
  try dsimp only [live1982, coloured1982]
  rw [child]
  dsimp only [result1980]
  have child := node1981_eq
  unfold live1981 coloured1981 at child
  try dsimp only [live1982, coloured1982]
  rw [child]
  dsimp only [result1981]
  try dsimp only [colour, result1982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1983_agree : tree1983 = literal1983 := by
  rw [tree1983_def]
  rfl
theorem node1983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1983 live1983 coloured1983 = result1983 := by
  rw [tree1983_def]
  try dsimp only [colour, result1983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1984_agree : tree1984 = literal1984 := by
  rw [tree1984_def, tree1982_agree, tree1983_agree]
  rfl
theorem node1984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1984 live1984 coloured1984 = result1984 := by
  rw [tree1984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1982_eq
  unfold live1982 coloured1982 at child
  try dsimp only [live1984, coloured1984]
  rw [child]
  dsimp only [result1982]
  have child := node1983_eq
  unfold live1983 coloured1983 at child
  try dsimp only [live1984, coloured1984]
  rw [child]
  dsimp only [result1983]
  try dsimp only [colour, result1984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1985_agree : tree1985 = literal1985 := by
  rw [tree1985_def]
  rfl
theorem node1985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1985 live1985 coloured1985 = result1985 := by
  rw [tree1985_def]
  try dsimp only [colour, result1985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1986_agree : tree1986 = literal1986 := by
  rw [tree1986_def, tree1984_agree, tree1985_agree]
  rfl
theorem node1986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1986 live1986 coloured1986 = result1986 := by
  rw [tree1986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1984_eq
  unfold live1984 coloured1984 at child
  try dsimp only [live1986, coloured1986]
  rw [child]
  dsimp only [result1984]
  have child := node1985_eq
  unfold live1985 coloured1985 at child
  try dsimp only [live1986, coloured1986]
  rw [child]
  dsimp only [result1985]
  try dsimp only [colour, result1986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1987_agree : tree1987 = literal1987 := by
  rw [tree1987_def]
  rfl
theorem node1987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1987 live1987 coloured1987 = result1987 := by
  rw [tree1987_def]
  try dsimp only [colour, result1987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1988_agree : tree1988 = literal1988 := by
  rw [tree1988_def, tree1986_agree, tree1987_agree]
  rfl
theorem node1988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1988 live1988 coloured1988 = result1988 := by
  rw [tree1988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1986_eq
  unfold live1986 coloured1986 at child
  try dsimp only [live1988, coloured1988]
  rw [child]
  dsimp only [result1986]
  have child := node1987_eq
  unfold live1987 coloured1987 at child
  try dsimp only [live1988, coloured1988]
  rw [child]
  dsimp only [result1987]
  try dsimp only [colour, result1988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1989_agree : tree1989 = literal1989 := by
  rw [tree1989_def]
  rfl
theorem node1989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1989 live1989 coloured1989 = result1989 := by
  rw [tree1989_def]
  try dsimp only [colour, result1989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1990_agree : tree1990 = literal1990 := by
  rw [tree1990_def, tree1988_agree, tree1989_agree]
  rfl
theorem node1990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1990 live1990 coloured1990 = result1990 := by
  rw [tree1990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1988_eq
  unfold live1988 coloured1988 at child
  try dsimp only [live1990, coloured1990]
  rw [child]
  dsimp only [result1988]
  have child := node1989_eq
  unfold live1989 coloured1989 at child
  try dsimp only [live1990, coloured1990]
  rw [child]
  dsimp only [result1989]
  try dsimp only [colour, result1990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1991_agree : tree1991 = literal1991 := by
  rw [tree1991_def]
  rfl
theorem node1991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1991 live1991 coloured1991 = result1991 := by
  rw [tree1991_def]
  try dsimp only [colour, result1991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1992_agree : tree1992 = literal1992 := by
  rw [tree1992_def, tree1990_agree, tree1991_agree]
  rfl
theorem node1992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1992 live1992 coloured1992 = result1992 := by
  rw [tree1992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1990_eq
  unfold live1990 coloured1990 at child
  try dsimp only [live1992, coloured1992]
  rw [child]
  dsimp only [result1990]
  have child := node1991_eq
  unfold live1991 coloured1991 at child
  try dsimp only [live1992, coloured1992]
  rw [child]
  dsimp only [result1991]
  try dsimp only [colour, result1992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1993_agree : tree1993 = literal1993 := by
  rw [tree1993_def]
  rfl
theorem node1993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1993 live1993 coloured1993 = result1993 := by
  rw [tree1993_def]
  try dsimp only [colour, result1993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1994_agree : tree1994 = literal1994 := by
  rw [tree1994_def, tree1992_agree, tree1993_agree]
  rfl
theorem node1994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1994 live1994 coloured1994 = result1994 := by
  rw [tree1994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1992_eq
  unfold live1992 coloured1992 at child
  try dsimp only [live1994, coloured1994]
  rw [child]
  dsimp only [result1992]
  have child := node1993_eq
  unfold live1993 coloured1993 at child
  try dsimp only [live1994, coloured1994]
  rw [child]
  dsimp only [result1993]
  try dsimp only [colour, result1994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1995_agree : tree1995 = literal1995 := by
  rw [tree1995_def]
  rfl
theorem node1995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1995 live1995 coloured1995 = result1995 := by
  rw [tree1995_def]
  try dsimp only [colour, result1995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1996_agree : tree1996 = literal1996 := by
  rw [tree1996_def, tree1994_agree, tree1995_agree]
  rfl
theorem node1996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1996 live1996 coloured1996 = result1996 := by
  rw [tree1996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1994_eq
  unfold live1994 coloured1994 at child
  try dsimp only [live1996, coloured1996]
  rw [child]
  dsimp only [result1994]
  have child := node1995_eq
  unfold live1995 coloured1995 at child
  try dsimp only [live1996, coloured1996]
  rw [child]
  dsimp only [result1995]
  try dsimp only [colour, result1996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1997_agree : tree1997 = literal1997 := by
  rw [tree1997_def]
  rfl
theorem node1997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1997 live1997 coloured1997 = result1997 := by
  rw [tree1997_def]
  try dsimp only [colour, result1997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1998_agree : tree1998 = literal1998 := by
  rw [tree1998_def, tree1996_agree, tree1997_agree]
  rfl
theorem node1998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1998 live1998 coloured1998 = result1998 := by
  rw [tree1998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1996_eq
  unfold live1996 coloured1996 at child
  try dsimp only [live1998, coloured1998]
  rw [child]
  dsimp only [result1996]
  have child := node1997_eq
  unfold live1997 coloured1997 at child
  try dsimp only [live1998, coloured1998]
  rw [child]
  dsimp only [result1997]
  try dsimp only [colour, result1998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1999_agree : tree1999 = literal1999 := by
  rw [tree1999_def]
  rfl
theorem node1999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1999 live1999 coloured1999 = result1999 := by
  rw [tree1999_def]
  try dsimp only [colour, result1999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2000_agree : tree2000 = literal2000 := by
  rw [tree2000_def, tree1998_agree, tree1999_agree]
  rfl
theorem node2000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2000 live2000 coloured2000 = result2000 := by
  rw [tree2000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1998_eq
  unfold live1998 coloured1998 at child
  try dsimp only [live2000, coloured2000]
  rw [child]
  dsimp only [result1998]
  have child := node1999_eq
  unfold live1999 coloured1999 at child
  try dsimp only [live2000, coloured2000]
  rw [child]
  dsimp only [result1999]
  try dsimp only [colour, result2000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2001_agree : tree2001 = literal2001 := by
  rw [tree2001_def]
  rfl
theorem node2001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2001 live2001 coloured2001 = result2001 := by
  rw [tree2001_def]
  try dsimp only [colour, result2001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2002_agree : tree2002 = literal2002 := by
  rw [tree2002_def, tree2000_agree, tree2001_agree]
  rfl
theorem node2002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2002 live2002 coloured2002 = result2002 := by
  rw [tree2002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2000_eq
  unfold live2000 coloured2000 at child
  try dsimp only [live2002, coloured2002]
  rw [child]
  dsimp only [result2000]
  have child := node2001_eq
  unfold live2001 coloured2001 at child
  try dsimp only [live2002, coloured2002]
  rw [child]
  dsimp only [result2001]
  try dsimp only [colour, result2002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2003_agree : tree2003 = literal2003 := by
  rw [tree2003_def]
  rfl
theorem node2003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2003 live2003 coloured2003 = result2003 := by
  rw [tree2003_def]
  try dsimp only [colour, result2003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2004_agree : tree2004 = literal2004 := by
  rw [tree2004_def, tree2002_agree, tree2003_agree]
  rfl
theorem node2004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2004 live2004 coloured2004 = result2004 := by
  rw [tree2004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2002_eq
  unfold live2002 coloured2002 at child
  try dsimp only [live2004, coloured2004]
  rw [child]
  dsimp only [result2002]
  have child := node2003_eq
  unfold live2003 coloured2003 at child
  try dsimp only [live2004, coloured2004]
  rw [child]
  dsimp only [result2003]
  try dsimp only [colour, result2004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2005_agree : tree2005 = literal2005 := by
  rw [tree2005_def]
  rfl
theorem node2005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2005 live2005 coloured2005 = result2005 := by
  rw [tree2005_def]
  try dsimp only [colour, result2005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2006_agree : tree2006 = literal2006 := by
  rw [tree2006_def, tree2004_agree, tree2005_agree]
  rfl
theorem node2006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2006 live2006 coloured2006 = result2006 := by
  rw [tree2006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2004_eq
  unfold live2004 coloured2004 at child
  try dsimp only [live2006, coloured2006]
  rw [child]
  dsimp only [result2004]
  have child := node2005_eq
  unfold live2005 coloured2005 at child
  try dsimp only [live2006, coloured2006]
  rw [child]
  dsimp only [result2005]
  try dsimp only [colour, result2006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2007_agree : tree2007 = literal2007 := by
  rw [tree2007_def]
  rfl
theorem node2007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2007 live2007 coloured2007 = result2007 := by
  rw [tree2007_def]
  try dsimp only [colour, result2007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2008_agree : tree2008 = literal2008 := by
  rw [tree2008_def, tree2006_agree, tree2007_agree]
  rfl
theorem node2008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2008 live2008 coloured2008 = result2008 := by
  rw [tree2008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2006_eq
  unfold live2006 coloured2006 at child
  try dsimp only [live2008, coloured2008]
  rw [child]
  dsimp only [result2006]
  have child := node2007_eq
  unfold live2007 coloured2007 at child
  try dsimp only [live2008, coloured2008]
  rw [child]
  dsimp only [result2007]
  try dsimp only [colour, result2008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2009_agree : tree2009 = literal2009 := by
  rw [tree2009_def]
  rfl
theorem node2009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2009 live2009 coloured2009 = result2009 := by
  rw [tree2009_def]
  try dsimp only [colour, result2009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2010_agree : tree2010 = literal2010 := by
  rw [tree2010_def, tree2008_agree, tree2009_agree]
  rfl
theorem node2010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2010 live2010 coloured2010 = result2010 := by
  rw [tree2010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2008_eq
  unfold live2008 coloured2008 at child
  try dsimp only [live2010, coloured2010]
  rw [child]
  dsimp only [result2008]
  have child := node2009_eq
  unfold live2009 coloured2009 at child
  try dsimp only [live2010, coloured2010]
  rw [child]
  dsimp only [result2009]
  try dsimp only [colour, result2010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2011_agree : tree2011 = literal2011 := by
  rw [tree2011_def]
  rfl
theorem node2011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2011 live2011 coloured2011 = result2011 := by
  rw [tree2011_def]
  try dsimp only [colour, result2011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2012_agree : tree2012 = literal2012 := by
  rw [tree2012_def, tree2010_agree, tree2011_agree]
  rfl
theorem node2012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2012 live2012 coloured2012 = result2012 := by
  rw [tree2012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2010_eq
  unfold live2010 coloured2010 at child
  try dsimp only [live2012, coloured2012]
  rw [child]
  dsimp only [result2010]
  have child := node2011_eq
  unfold live2011 coloured2011 at child
  try dsimp only [live2012, coloured2012]
  rw [child]
  dsimp only [result2011]
  try dsimp only [colour, result2012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2013_agree : tree2013 = literal2013 := by
  rw [tree2013_def]
  rfl
theorem node2013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2013 live2013 coloured2013 = result2013 := by
  rw [tree2013_def]
  try dsimp only [colour, result2013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2014_agree : tree2014 = literal2014 := by
  rw [tree2014_def, tree2012_agree, tree2013_agree]
  rfl
theorem node2014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2014 live2014 coloured2014 = result2014 := by
  rw [tree2014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node2012_eq
  unfold live2012 coloured2012 at child
  try dsimp only [live2014, coloured2014]
  rw [child]
  dsimp only [result2012]
  have child := node2013_eq
  unfold live2013 coloured2013 at child
  try dsimp only [live2014, coloured2014]
  rw [child]
  dsimp only [result2013]
  try dsimp only [colour, result2014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree2015_agree : tree2015 = literal2015 := by
  rw [tree2015_def]
  rfl
theorem node2015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2015 live2015 coloured2015 = result2015 := by
  rw [tree2015_def]
  try dsimp only [colour, result2015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
