import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree1920_agree_conditional
    (child0 : tree1918 = literal1918)
    (child1 : tree1919 = literal1919) : tree1920 = literal1920 := by
  rw [tree1920_def, child0, child1]
  rfl
theorem node1920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1918 live1918 coloured1918 = result1918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1919 live1919 coloured1919 = result1919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1920 live1920 coloured1920 = result1920 := by
  rw [tree1920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1918 coloured1918 at child
  try dsimp only [live1920, coloured1920]
  rw [child]
  dsimp only [result1918]
  have child := child1
  unfold live1919 coloured1919 at child
  try dsimp only [live1920, coloured1920]
  rw [child]
  dsimp only [result1919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1921_agree_conditional : tree1921 = literal1921 := by
  rw [tree1921_def]
  rfl
theorem node1921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1921 live1921 coloured1921 = result1921 := by
  rw [tree1921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1922_agree_conditional
    (child0 : tree1920 = literal1920)
    (child1 : tree1921 = literal1921) : tree1922 = literal1922 := by
  rw [tree1922_def, child0, child1]
  rfl
theorem node1922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1920 live1920 coloured1920 = result1920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1921 live1921 coloured1921 = result1921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1922 live1922 coloured1922 = result1922 := by
  rw [tree1922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1920 coloured1920 at child
  try dsimp only [live1922, coloured1922]
  rw [child]
  dsimp only [result1920]
  have child := child1
  unfold live1921 coloured1921 at child
  try dsimp only [live1922, coloured1922]
  rw [child]
  dsimp only [result1921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1923_agree_conditional : tree1923 = literal1923 := by
  rw [tree1923_def]
  rfl
theorem node1923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1923 live1923 coloured1923 = result1923 := by
  rw [tree1923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1924_agree_conditional
    (child0 : tree1922 = literal1922)
    (child1 : tree1923 = literal1923) : tree1924 = literal1924 := by
  rw [tree1924_def, child0, child1]
  rfl
theorem node1924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1922 live1922 coloured1922 = result1922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1923 live1923 coloured1923 = result1923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1924 live1924 coloured1924 = result1924 := by
  rw [tree1924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1922 coloured1922 at child
  try dsimp only [live1924, coloured1924]
  rw [child]
  dsimp only [result1922]
  have child := child1
  unfold live1923 coloured1923 at child
  try dsimp only [live1924, coloured1924]
  rw [child]
  dsimp only [result1923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1925_agree_conditional : tree1925 = literal1925 := by
  rw [tree1925_def]
  rfl
theorem node1925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1925 live1925 coloured1925 = result1925 := by
  rw [tree1925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1926_agree_conditional
    (child0 : tree1924 = literal1924)
    (child1 : tree1925 = literal1925) : tree1926 = literal1926 := by
  rw [tree1926_def, child0, child1]
  rfl
theorem node1926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1924 live1924 coloured1924 = result1924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1925 live1925 coloured1925 = result1925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1926 live1926 coloured1926 = result1926 := by
  rw [tree1926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1924 coloured1924 at child
  try dsimp only [live1926, coloured1926]
  rw [child]
  dsimp only [result1924]
  have child := child1
  unfold live1925 coloured1925 at child
  try dsimp only [live1926, coloured1926]
  rw [child]
  dsimp only [result1925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1927_agree_conditional : tree1927 = literal1927 := by
  rw [tree1927_def]
  rfl
theorem node1927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1927 live1927 coloured1927 = result1927 := by
  rw [tree1927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1928_agree_conditional
    (child0 : tree1926 = literal1926)
    (child1 : tree1927 = literal1927) : tree1928 = literal1928 := by
  rw [tree1928_def, child0, child1]
  rfl
theorem node1928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1926 live1926 coloured1926 = result1926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1927 live1927 coloured1927 = result1927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1928 live1928 coloured1928 = result1928 := by
  rw [tree1928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1926 coloured1926 at child
  try dsimp only [live1928, coloured1928]
  rw [child]
  dsimp only [result1926]
  have child := child1
  unfold live1927 coloured1927 at child
  try dsimp only [live1928, coloured1928]
  rw [child]
  dsimp only [result1927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1929_agree_conditional : tree1929 = literal1929 := by
  rw [tree1929_def]
  rfl
theorem node1929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1929 live1929 coloured1929 = result1929 := by
  rw [tree1929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1930_agree_conditional
    (child0 : tree1928 = literal1928)
    (child1 : tree1929 = literal1929) : tree1930 = literal1930 := by
  rw [tree1930_def, child0, child1]
  rfl
theorem node1930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1928 live1928 coloured1928 = result1928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1929 live1929 coloured1929 = result1929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1930 live1930 coloured1930 = result1930 := by
  rw [tree1930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1928 coloured1928 at child
  try dsimp only [live1930, coloured1930]
  rw [child]
  dsimp only [result1928]
  have child := child1
  unfold live1929 coloured1929 at child
  try dsimp only [live1930, coloured1930]
  rw [child]
  dsimp only [result1929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1931_agree_conditional : tree1931 = literal1931 := by
  rw [tree1931_def]
  rfl
theorem node1931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1931 live1931 coloured1931 = result1931 := by
  rw [tree1931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1932_agree_conditional
    (child0 : tree1930 = literal1930)
    (child1 : tree1931 = literal1931) : tree1932 = literal1932 := by
  rw [tree1932_def, child0, child1]
  rfl
theorem node1932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1930 live1930 coloured1930 = result1930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1931 live1931 coloured1931 = result1931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1932 live1932 coloured1932 = result1932 := by
  rw [tree1932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1930 coloured1930 at child
  try dsimp only [live1932, coloured1932]
  rw [child]
  dsimp only [result1930]
  have child := child1
  unfold live1931 coloured1931 at child
  try dsimp only [live1932, coloured1932]
  rw [child]
  dsimp only [result1931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1933_agree_conditional : tree1933 = literal1933 := by
  rw [tree1933_def]
  rfl
theorem node1933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1933 live1933 coloured1933 = result1933 := by
  rw [tree1933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1934_agree_conditional
    (child0 : tree1932 = literal1932)
    (child1 : tree1933 = literal1933) : tree1934 = literal1934 := by
  rw [tree1934_def, child0, child1]
  rfl
theorem node1934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1932 live1932 coloured1932 = result1932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1933 live1933 coloured1933 = result1933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1934 live1934 coloured1934 = result1934 := by
  rw [tree1934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1932 coloured1932 at child
  try dsimp only [live1934, coloured1934]
  rw [child]
  dsimp only [result1932]
  have child := child1
  unfold live1933 coloured1933 at child
  try dsimp only [live1934, coloured1934]
  rw [child]
  dsimp only [result1933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1935_agree_conditional : tree1935 = literal1935 := by
  rw [tree1935_def]
  rfl
theorem node1935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1935 live1935 coloured1935 = result1935 := by
  rw [tree1935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1936_agree_conditional
    (child0 : tree1934 = literal1934)
    (child1 : tree1935 = literal1935) : tree1936 = literal1936 := by
  rw [tree1936_def, child0, child1]
  rfl
theorem node1936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1934 live1934 coloured1934 = result1934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1935 live1935 coloured1935 = result1935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1936 live1936 coloured1936 = result1936 := by
  rw [tree1936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1934 coloured1934 at child
  try dsimp only [live1936, coloured1936]
  rw [child]
  dsimp only [result1934]
  have child := child1
  unfold live1935 coloured1935 at child
  try dsimp only [live1936, coloured1936]
  rw [child]
  dsimp only [result1935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1937_agree_conditional : tree1937 = literal1937 := by
  rw [tree1937_def]
  rfl
theorem node1937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1937 live1937 coloured1937 = result1937 := by
  rw [tree1937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1938_agree_conditional
    (child0 : tree1936 = literal1936)
    (child1 : tree1937 = literal1937) : tree1938 = literal1938 := by
  rw [tree1938_def, child0, child1]
  rfl
theorem node1938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1936 live1936 coloured1936 = result1936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1937 live1937 coloured1937 = result1937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1938 live1938 coloured1938 = result1938 := by
  rw [tree1938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1936 coloured1936 at child
  try dsimp only [live1938, coloured1938]
  rw [child]
  dsimp only [result1936]
  have child := child1
  unfold live1937 coloured1937 at child
  try dsimp only [live1938, coloured1938]
  rw [child]
  dsimp only [result1937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1939_agree_conditional : tree1939 = literal1939 := by
  rw [tree1939_def]
  rfl
theorem node1939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1939 live1939 coloured1939 = result1939 := by
  rw [tree1939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1940_agree_conditional
    (child0 : tree1938 = literal1938)
    (child1 : tree1939 = literal1939) : tree1940 = literal1940 := by
  rw [tree1940_def, child0, child1]
  rfl
theorem node1940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1938 live1938 coloured1938 = result1938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1939 live1939 coloured1939 = result1939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1940 live1940 coloured1940 = result1940 := by
  rw [tree1940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1938 coloured1938 at child
  try dsimp only [live1940, coloured1940]
  rw [child]
  dsimp only [result1938]
  have child := child1
  unfold live1939 coloured1939 at child
  try dsimp only [live1940, coloured1940]
  rw [child]
  dsimp only [result1939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1941_agree_conditional : tree1941 = literal1941 := by
  rw [tree1941_def]
  rfl
theorem node1941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1941 live1941 coloured1941 = result1941 := by
  rw [tree1941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1942_agree_conditional
    (child0 : tree1940 = literal1940)
    (child1 : tree1941 = literal1941) : tree1942 = literal1942 := by
  rw [tree1942_def, child0, child1]
  rfl
theorem node1942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1940 live1940 coloured1940 = result1940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1941 live1941 coloured1941 = result1941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1942 live1942 coloured1942 = result1942 := by
  rw [tree1942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1940 coloured1940 at child
  try dsimp only [live1942, coloured1942]
  rw [child]
  dsimp only [result1940]
  have child := child1
  unfold live1941 coloured1941 at child
  try dsimp only [live1942, coloured1942]
  rw [child]
  dsimp only [result1941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1943_agree_conditional : tree1943 = literal1943 := by
  rw [tree1943_def]
  rfl
theorem node1943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1943 live1943 coloured1943 = result1943 := by
  rw [tree1943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1944_agree_conditional
    (child0 : tree1942 = literal1942)
    (child1 : tree1943 = literal1943) : tree1944 = literal1944 := by
  rw [tree1944_def, child0, child1]
  rfl
theorem node1944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1942 live1942 coloured1942 = result1942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1943 live1943 coloured1943 = result1943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1944 live1944 coloured1944 = result1944 := by
  rw [tree1944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1942 coloured1942 at child
  try dsimp only [live1944, coloured1944]
  rw [child]
  dsimp only [result1942]
  have child := child1
  unfold live1943 coloured1943 at child
  try dsimp only [live1944, coloured1944]
  rw [child]
  dsimp only [result1943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1945_agree_conditional : tree1945 = literal1945 := by
  rw [tree1945_def]
  rfl
theorem node1945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1945 live1945 coloured1945 = result1945 := by
  rw [tree1945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1946_agree_conditional
    (child0 : tree1944 = literal1944)
    (child1 : tree1945 = literal1945) : tree1946 = literal1946 := by
  rw [tree1946_def, child0, child1]
  rfl
theorem node1946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1944 live1944 coloured1944 = result1944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1945 live1945 coloured1945 = result1945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1946 live1946 coloured1946 = result1946 := by
  rw [tree1946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1944 coloured1944 at child
  try dsimp only [live1946, coloured1946]
  rw [child]
  dsimp only [result1944]
  have child := child1
  unfold live1945 coloured1945 at child
  try dsimp only [live1946, coloured1946]
  rw [child]
  dsimp only [result1945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1947_agree_conditional : tree1947 = literal1947 := by
  rw [tree1947_def]
  rfl
theorem node1947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1947 live1947 coloured1947 = result1947 := by
  rw [tree1947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1948_agree_conditional
    (child0 : tree1946 = literal1946)
    (child1 : tree1947 = literal1947) : tree1948 = literal1948 := by
  rw [tree1948_def, child0, child1]
  rfl
theorem node1948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1946 live1946 coloured1946 = result1946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1947 live1947 coloured1947 = result1947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1948 live1948 coloured1948 = result1948 := by
  rw [tree1948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1946 coloured1946 at child
  try dsimp only [live1948, coloured1948]
  rw [child]
  dsimp only [result1946]
  have child := child1
  unfold live1947 coloured1947 at child
  try dsimp only [live1948, coloured1948]
  rw [child]
  dsimp only [result1947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1949_agree_conditional : tree1949 = literal1949 := by
  rw [tree1949_def]
  rfl
theorem node1949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1949 live1949 coloured1949 = result1949 := by
  rw [tree1949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1950_agree_conditional
    (child0 : tree1948 = literal1948)
    (child1 : tree1949 = literal1949) : tree1950 = literal1950 := by
  rw [tree1950_def, child0, child1]
  rfl
theorem node1950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1948 live1948 coloured1948 = result1948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1949 live1949 coloured1949 = result1949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1950 live1950 coloured1950 = result1950 := by
  rw [tree1950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1948 coloured1948 at child
  try dsimp only [live1950, coloured1950]
  rw [child]
  dsimp only [result1948]
  have child := child1
  unfold live1949 coloured1949 at child
  try dsimp only [live1950, coloured1950]
  rw [child]
  dsimp only [result1949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1951_agree_conditional : tree1951 = literal1951 := by
  rw [tree1951_def]
  rfl
theorem node1951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1951 live1951 coloured1951 = result1951 := by
  rw [tree1951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1952_agree_conditional
    (child0 : tree1950 = literal1950)
    (child1 : tree1951 = literal1951) : tree1952 = literal1952 := by
  rw [tree1952_def, child0, child1]
  rfl
theorem node1952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1950 live1950 coloured1950 = result1950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1951 live1951 coloured1951 = result1951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1952 live1952 coloured1952 = result1952 := by
  rw [tree1952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1950 coloured1950 at child
  try dsimp only [live1952, coloured1952]
  rw [child]
  dsimp only [result1950]
  have child := child1
  unfold live1951 coloured1951 at child
  try dsimp only [live1952, coloured1952]
  rw [child]
  dsimp only [result1951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1953_agree_conditional : tree1953 = literal1953 := by
  rw [tree1953_def]
  rfl
theorem node1953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1953 live1953 coloured1953 = result1953 := by
  rw [tree1953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1954_agree_conditional
    (child0 : tree1952 = literal1952)
    (child1 : tree1953 = literal1953) : tree1954 = literal1954 := by
  rw [tree1954_def, child0, child1]
  rfl
theorem node1954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1952 live1952 coloured1952 = result1952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1953 live1953 coloured1953 = result1953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1954 live1954 coloured1954 = result1954 := by
  rw [tree1954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1952 coloured1952 at child
  try dsimp only [live1954, coloured1954]
  rw [child]
  dsimp only [result1952]
  have child := child1
  unfold live1953 coloured1953 at child
  try dsimp only [live1954, coloured1954]
  rw [child]
  dsimp only [result1953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1955_agree_conditional : tree1955 = literal1955 := by
  rw [tree1955_def]
  rfl
theorem node1955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1955 live1955 coloured1955 = result1955 := by
  rw [tree1955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1956_agree_conditional
    (child0 : tree1954 = literal1954)
    (child1 : tree1955 = literal1955) : tree1956 = literal1956 := by
  rw [tree1956_def, child0, child1]
  rfl
theorem node1956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1954 live1954 coloured1954 = result1954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1955 live1955 coloured1955 = result1955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1956 live1956 coloured1956 = result1956 := by
  rw [tree1956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1954 coloured1954 at child
  try dsimp only [live1956, coloured1956]
  rw [child]
  dsimp only [result1954]
  have child := child1
  unfold live1955 coloured1955 at child
  try dsimp only [live1956, coloured1956]
  rw [child]
  dsimp only [result1955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1957_agree_conditional : tree1957 = literal1957 := by
  rw [tree1957_def]
  rfl
theorem node1957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1957 live1957 coloured1957 = result1957 := by
  rw [tree1957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1958_agree_conditional
    (child0 : tree1956 = literal1956)
    (child1 : tree1957 = literal1957) : tree1958 = literal1958 := by
  rw [tree1958_def, child0, child1]
  rfl
theorem node1958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1956 live1956 coloured1956 = result1956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1957 live1957 coloured1957 = result1957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1958 live1958 coloured1958 = result1958 := by
  rw [tree1958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1956 coloured1956 at child
  try dsimp only [live1958, coloured1958]
  rw [child]
  dsimp only [result1956]
  have child := child1
  unfold live1957 coloured1957 at child
  try dsimp only [live1958, coloured1958]
  rw [child]
  dsimp only [result1957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1959_agree_conditional : tree1959 = literal1959 := by
  rw [tree1959_def]
  rfl
theorem node1959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1959 live1959 coloured1959 = result1959 := by
  rw [tree1959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1960_agree_conditional
    (child0 : tree1958 = literal1958)
    (child1 : tree1959 = literal1959) : tree1960 = literal1960 := by
  rw [tree1960_def, child0, child1]
  rfl
theorem node1960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1958 live1958 coloured1958 = result1958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1959 live1959 coloured1959 = result1959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1960 live1960 coloured1960 = result1960 := by
  rw [tree1960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1958 coloured1958 at child
  try dsimp only [live1960, coloured1960]
  rw [child]
  dsimp only [result1958]
  have child := child1
  unfold live1959 coloured1959 at child
  try dsimp only [live1960, coloured1960]
  rw [child]
  dsimp only [result1959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1961_agree_conditional : tree1961 = literal1961 := by
  rw [tree1961_def]
  rfl
theorem node1961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1961 live1961 coloured1961 = result1961 := by
  rw [tree1961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1962_agree_conditional
    (child0 : tree1960 = literal1960)
    (child1 : tree1961 = literal1961) : tree1962 = literal1962 := by
  rw [tree1962_def, child0, child1]
  rfl
theorem node1962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1960 live1960 coloured1960 = result1960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1961 live1961 coloured1961 = result1961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1962 live1962 coloured1962 = result1962 := by
  rw [tree1962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1960 coloured1960 at child
  try dsimp only [live1962, coloured1962]
  rw [child]
  dsimp only [result1960]
  have child := child1
  unfold live1961 coloured1961 at child
  try dsimp only [live1962, coloured1962]
  rw [child]
  dsimp only [result1961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1963_agree_conditional : tree1963 = literal1963 := by
  rw [tree1963_def]
  rfl
theorem node1963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1963 live1963 coloured1963 = result1963 := by
  rw [tree1963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1964_agree_conditional
    (child0 : tree1962 = literal1962)
    (child1 : tree1963 = literal1963) : tree1964 = literal1964 := by
  rw [tree1964_def, child0, child1]
  rfl
theorem node1964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1962 live1962 coloured1962 = result1962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1963 live1963 coloured1963 = result1963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1964 live1964 coloured1964 = result1964 := by
  rw [tree1964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1962 coloured1962 at child
  try dsimp only [live1964, coloured1964]
  rw [child]
  dsimp only [result1962]
  have child := child1
  unfold live1963 coloured1963 at child
  try dsimp only [live1964, coloured1964]
  rw [child]
  dsimp only [result1963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1965_agree_conditional : tree1965 = literal1965 := by
  rw [tree1965_def]
  rfl
theorem node1965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1965 live1965 coloured1965 = result1965 := by
  rw [tree1965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1966_agree_conditional
    (child0 : tree1964 = literal1964)
    (child1 : tree1965 = literal1965) : tree1966 = literal1966 := by
  rw [tree1966_def, child0, child1]
  rfl
theorem node1966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1964 live1964 coloured1964 = result1964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1965 live1965 coloured1965 = result1965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1966 live1966 coloured1966 = result1966 := by
  rw [tree1966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1964 coloured1964 at child
  try dsimp only [live1966, coloured1966]
  rw [child]
  dsimp only [result1964]
  have child := child1
  unfold live1965 coloured1965 at child
  try dsimp only [live1966, coloured1966]
  rw [child]
  dsimp only [result1965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1967_agree_conditional : tree1967 = literal1967 := by
  rw [tree1967_def]
  rfl
theorem node1967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1967 live1967 coloured1967 = result1967 := by
  rw [tree1967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1968_agree_conditional
    (child0 : tree1966 = literal1966)
    (child1 : tree1967 = literal1967) : tree1968 = literal1968 := by
  rw [tree1968_def, child0, child1]
  rfl
theorem node1968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1966 live1966 coloured1966 = result1966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1967 live1967 coloured1967 = result1967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1968 live1968 coloured1968 = result1968 := by
  rw [tree1968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1966 coloured1966 at child
  try dsimp only [live1968, coloured1968]
  rw [child]
  dsimp only [result1966]
  have child := child1
  unfold live1967 coloured1967 at child
  try dsimp only [live1968, coloured1968]
  rw [child]
  dsimp only [result1967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1969_agree_conditional : tree1969 = literal1969 := by
  rw [tree1969_def]
  rfl
theorem node1969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1969 live1969 coloured1969 = result1969 := by
  rw [tree1969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1970_agree_conditional
    (child0 : tree1968 = literal1968)
    (child1 : tree1969 = literal1969) : tree1970 = literal1970 := by
  rw [tree1970_def, child0, child1]
  rfl
theorem node1970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1968 live1968 coloured1968 = result1968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1969 live1969 coloured1969 = result1969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1970 live1970 coloured1970 = result1970 := by
  rw [tree1970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1968 coloured1968 at child
  try dsimp only [live1970, coloured1970]
  rw [child]
  dsimp only [result1968]
  have child := child1
  unfold live1969 coloured1969 at child
  try dsimp only [live1970, coloured1970]
  rw [child]
  dsimp only [result1969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1971_agree_conditional : tree1971 = literal1971 := by
  rw [tree1971_def]
  rfl
theorem node1971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1971 live1971 coloured1971 = result1971 := by
  rw [tree1971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1972_agree_conditional
    (child0 : tree1970 = literal1970)
    (child1 : tree1971 = literal1971) : tree1972 = literal1972 := by
  rw [tree1972_def, child0, child1]
  rfl
theorem node1972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1970 live1970 coloured1970 = result1970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1971 live1971 coloured1971 = result1971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1972 live1972 coloured1972 = result1972 := by
  rw [tree1972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1970 coloured1970 at child
  try dsimp only [live1972, coloured1972]
  rw [child]
  dsimp only [result1970]
  have child := child1
  unfold live1971 coloured1971 at child
  try dsimp only [live1972, coloured1972]
  rw [child]
  dsimp only [result1971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1973_agree_conditional : tree1973 = literal1973 := by
  rw [tree1973_def]
  rfl
theorem node1973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1973 live1973 coloured1973 = result1973 := by
  rw [tree1973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1974_agree_conditional
    (child0 : tree1972 = literal1972)
    (child1 : tree1973 = literal1973) : tree1974 = literal1974 := by
  rw [tree1974_def, child0, child1]
  rfl
theorem node1974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1972 live1972 coloured1972 = result1972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1973 live1973 coloured1973 = result1973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1974 live1974 coloured1974 = result1974 := by
  rw [tree1974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1972 coloured1972 at child
  try dsimp only [live1974, coloured1974]
  rw [child]
  dsimp only [result1972]
  have child := child1
  unfold live1973 coloured1973 at child
  try dsimp only [live1974, coloured1974]
  rw [child]
  dsimp only [result1973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1975_agree_conditional : tree1975 = literal1975 := by
  rw [tree1975_def]
  rfl
theorem node1975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1975 live1975 coloured1975 = result1975 := by
  rw [tree1975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1976_agree_conditional
    (child0 : tree1974 = literal1974)
    (child1 : tree1975 = literal1975) : tree1976 = literal1976 := by
  rw [tree1976_def, child0, child1]
  rfl
theorem node1976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1974 live1974 coloured1974 = result1974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1975 live1975 coloured1975 = result1975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1976 live1976 coloured1976 = result1976 := by
  rw [tree1976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1974 coloured1974 at child
  try dsimp only [live1976, coloured1976]
  rw [child]
  dsimp only [result1974]
  have child := child1
  unfold live1975 coloured1975 at child
  try dsimp only [live1976, coloured1976]
  rw [child]
  dsimp only [result1975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1977_agree_conditional : tree1977 = literal1977 := by
  rw [tree1977_def]
  rfl
theorem node1977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1977 live1977 coloured1977 = result1977 := by
  rw [tree1977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1978_agree_conditional
    (child0 : tree1976 = literal1976)
    (child1 : tree1977 = literal1977) : tree1978 = literal1978 := by
  rw [tree1978_def, child0, child1]
  rfl
theorem node1978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1976 live1976 coloured1976 = result1976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1977 live1977 coloured1977 = result1977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1978 live1978 coloured1978 = result1978 := by
  rw [tree1978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1976 coloured1976 at child
  try dsimp only [live1978, coloured1978]
  rw [child]
  dsimp only [result1976]
  have child := child1
  unfold live1977 coloured1977 at child
  try dsimp only [live1978, coloured1978]
  rw [child]
  dsimp only [result1977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1979_agree_conditional : tree1979 = literal1979 := by
  rw [tree1979_def]
  rfl
theorem node1979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1979 live1979 coloured1979 = result1979 := by
  rw [tree1979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1980_agree_conditional
    (child0 : tree1978 = literal1978)
    (child1 : tree1979 = literal1979) : tree1980 = literal1980 := by
  rw [tree1980_def, child0, child1]
  rfl
theorem node1980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1978 live1978 coloured1978 = result1978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1979 live1979 coloured1979 = result1979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1980 live1980 coloured1980 = result1980 := by
  rw [tree1980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1978 coloured1978 at child
  try dsimp only [live1980, coloured1980]
  rw [child]
  dsimp only [result1978]
  have child := child1
  unfold live1979 coloured1979 at child
  try dsimp only [live1980, coloured1980]
  rw [child]
  dsimp only [result1979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1981_agree_conditional : tree1981 = literal1981 := by
  rw [tree1981_def]
  rfl
theorem node1981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1981 live1981 coloured1981 = result1981 := by
  rw [tree1981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1982_agree_conditional
    (child0 : tree1980 = literal1980)
    (child1 : tree1981 = literal1981) : tree1982 = literal1982 := by
  rw [tree1982_def, child0, child1]
  rfl
theorem node1982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1980 live1980 coloured1980 = result1980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1981 live1981 coloured1981 = result1981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1982 live1982 coloured1982 = result1982 := by
  rw [tree1982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1980 coloured1980 at child
  try dsimp only [live1982, coloured1982]
  rw [child]
  dsimp only [result1980]
  have child := child1
  unfold live1981 coloured1981 at child
  try dsimp only [live1982, coloured1982]
  rw [child]
  dsimp only [result1981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1983_agree_conditional : tree1983 = literal1983 := by
  rw [tree1983_def]
  rfl
theorem node1983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1983 live1983 coloured1983 = result1983 := by
  rw [tree1983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1984_agree_conditional
    (child0 : tree1982 = literal1982)
    (child1 : tree1983 = literal1983) : tree1984 = literal1984 := by
  rw [tree1984_def, child0, child1]
  rfl
theorem node1984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1982 live1982 coloured1982 = result1982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1983 live1983 coloured1983 = result1983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1984 live1984 coloured1984 = result1984 := by
  rw [tree1984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1982 coloured1982 at child
  try dsimp only [live1984, coloured1984]
  rw [child]
  dsimp only [result1982]
  have child := child1
  unfold live1983 coloured1983 at child
  try dsimp only [live1984, coloured1984]
  rw [child]
  dsimp only [result1983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1985_agree_conditional : tree1985 = literal1985 := by
  rw [tree1985_def]
  rfl
theorem node1985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1985 live1985 coloured1985 = result1985 := by
  rw [tree1985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1986_agree_conditional
    (child0 : tree1984 = literal1984)
    (child1 : tree1985 = literal1985) : tree1986 = literal1986 := by
  rw [tree1986_def, child0, child1]
  rfl
theorem node1986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1984 live1984 coloured1984 = result1984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1985 live1985 coloured1985 = result1985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1986 live1986 coloured1986 = result1986 := by
  rw [tree1986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1984 coloured1984 at child
  try dsimp only [live1986, coloured1986]
  rw [child]
  dsimp only [result1984]
  have child := child1
  unfold live1985 coloured1985 at child
  try dsimp only [live1986, coloured1986]
  rw [child]
  dsimp only [result1985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1987_agree_conditional : tree1987 = literal1987 := by
  rw [tree1987_def]
  rfl
theorem node1987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1987 live1987 coloured1987 = result1987 := by
  rw [tree1987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1988_agree_conditional
    (child0 : tree1986 = literal1986)
    (child1 : tree1987 = literal1987) : tree1988 = literal1988 := by
  rw [tree1988_def, child0, child1]
  rfl
theorem node1988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1986 live1986 coloured1986 = result1986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1987 live1987 coloured1987 = result1987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1988 live1988 coloured1988 = result1988 := by
  rw [tree1988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1986 coloured1986 at child
  try dsimp only [live1988, coloured1988]
  rw [child]
  dsimp only [result1986]
  have child := child1
  unfold live1987 coloured1987 at child
  try dsimp only [live1988, coloured1988]
  rw [child]
  dsimp only [result1987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1989_agree_conditional : tree1989 = literal1989 := by
  rw [tree1989_def]
  rfl
theorem node1989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1989 live1989 coloured1989 = result1989 := by
  rw [tree1989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1990_agree_conditional
    (child0 : tree1988 = literal1988)
    (child1 : tree1989 = literal1989) : tree1990 = literal1990 := by
  rw [tree1990_def, child0, child1]
  rfl
theorem node1990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1988 live1988 coloured1988 = result1988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1989 live1989 coloured1989 = result1989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1990 live1990 coloured1990 = result1990 := by
  rw [tree1990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1988 coloured1988 at child
  try dsimp only [live1990, coloured1990]
  rw [child]
  dsimp only [result1988]
  have child := child1
  unfold live1989 coloured1989 at child
  try dsimp only [live1990, coloured1990]
  rw [child]
  dsimp only [result1989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1991_agree_conditional : tree1991 = literal1991 := by
  rw [tree1991_def]
  rfl
theorem node1991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1991 live1991 coloured1991 = result1991 := by
  rw [tree1991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1992_agree_conditional
    (child0 : tree1990 = literal1990)
    (child1 : tree1991 = literal1991) : tree1992 = literal1992 := by
  rw [tree1992_def, child0, child1]
  rfl
theorem node1992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1990 live1990 coloured1990 = result1990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1991 live1991 coloured1991 = result1991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1992 live1992 coloured1992 = result1992 := by
  rw [tree1992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1990 coloured1990 at child
  try dsimp only [live1992, coloured1992]
  rw [child]
  dsimp only [result1990]
  have child := child1
  unfold live1991 coloured1991 at child
  try dsimp only [live1992, coloured1992]
  rw [child]
  dsimp only [result1991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1993_agree_conditional : tree1993 = literal1993 := by
  rw [tree1993_def]
  rfl
theorem node1993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1993 live1993 coloured1993 = result1993 := by
  rw [tree1993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1994_agree_conditional
    (child0 : tree1992 = literal1992)
    (child1 : tree1993 = literal1993) : tree1994 = literal1994 := by
  rw [tree1994_def, child0, child1]
  rfl
theorem node1994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1992 live1992 coloured1992 = result1992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1993 live1993 coloured1993 = result1993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1994 live1994 coloured1994 = result1994 := by
  rw [tree1994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1992 coloured1992 at child
  try dsimp only [live1994, coloured1994]
  rw [child]
  dsimp only [result1992]
  have child := child1
  unfold live1993 coloured1993 at child
  try dsimp only [live1994, coloured1994]
  rw [child]
  dsimp only [result1993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1995_agree_conditional : tree1995 = literal1995 := by
  rw [tree1995_def]
  rfl
theorem node1995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1995 live1995 coloured1995 = result1995 := by
  rw [tree1995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1996_agree_conditional
    (child0 : tree1994 = literal1994)
    (child1 : tree1995 = literal1995) : tree1996 = literal1996 := by
  rw [tree1996_def, child0, child1]
  rfl
theorem node1996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1994 live1994 coloured1994 = result1994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1995 live1995 coloured1995 = result1995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1996 live1996 coloured1996 = result1996 := by
  rw [tree1996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1994 coloured1994 at child
  try dsimp only [live1996, coloured1996]
  rw [child]
  dsimp only [result1994]
  have child := child1
  unfold live1995 coloured1995 at child
  try dsimp only [live1996, coloured1996]
  rw [child]
  dsimp only [result1995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1997_agree_conditional : tree1997 = literal1997 := by
  rw [tree1997_def]
  rfl
theorem node1997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1997 live1997 coloured1997 = result1997 := by
  rw [tree1997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1998_agree_conditional
    (child0 : tree1996 = literal1996)
    (child1 : tree1997 = literal1997) : tree1998 = literal1998 := by
  rw [tree1998_def, child0, child1]
  rfl
theorem node1998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1996 live1996 coloured1996 = result1996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1997 live1997 coloured1997 = result1997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1998 live1998 coloured1998 = result1998 := by
  rw [tree1998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1996 coloured1996 at child
  try dsimp only [live1998, coloured1998]
  rw [child]
  dsimp only [result1996]
  have child := child1
  unfold live1997 coloured1997 at child
  try dsimp only [live1998, coloured1998]
  rw [child]
  dsimp only [result1997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1999_agree_conditional : tree1999 = literal1999 := by
  rw [tree1999_def]
  rfl
theorem node1999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1999 live1999 coloured1999 = result1999 := by
  rw [tree1999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2000_agree_conditional
    (child0 : tree1998 = literal1998)
    (child1 : tree1999 = literal1999) : tree2000 = literal2000 := by
  rw [tree2000_def, child0, child1]
  rfl
theorem node2000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1998 live1998 coloured1998 = result1998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1999 live1999 coloured1999 = result1999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2000 live2000 coloured2000 = result2000 := by
  rw [tree2000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1998 coloured1998 at child
  try dsimp only [live2000, coloured2000]
  rw [child]
  dsimp only [result1998]
  have child := child1
  unfold live1999 coloured1999 at child
  try dsimp only [live2000, coloured2000]
  rw [child]
  dsimp only [result1999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2001_agree_conditional : tree2001 = literal2001 := by
  rw [tree2001_def]
  rfl
theorem node2001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2001 live2001 coloured2001 = result2001 := by
  rw [tree2001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2002_agree_conditional
    (child0 : tree2000 = literal2000)
    (child1 : tree2001 = literal2001) : tree2002 = literal2002 := by
  rw [tree2002_def, child0, child1]
  rfl
theorem node2002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2000 live2000 coloured2000 = result2000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2001 live2001 coloured2001 = result2001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2002 live2002 coloured2002 = result2002 := by
  rw [tree2002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2000 coloured2000 at child
  try dsimp only [live2002, coloured2002]
  rw [child]
  dsimp only [result2000]
  have child := child1
  unfold live2001 coloured2001 at child
  try dsimp only [live2002, coloured2002]
  rw [child]
  dsimp only [result2001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2003_agree_conditional : tree2003 = literal2003 := by
  rw [tree2003_def]
  rfl
theorem node2003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2003 live2003 coloured2003 = result2003 := by
  rw [tree2003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2004_agree_conditional
    (child0 : tree2002 = literal2002)
    (child1 : tree2003 = literal2003) : tree2004 = literal2004 := by
  rw [tree2004_def, child0, child1]
  rfl
theorem node2004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2002 live2002 coloured2002 = result2002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2003 live2003 coloured2003 = result2003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2004 live2004 coloured2004 = result2004 := by
  rw [tree2004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2002 coloured2002 at child
  try dsimp only [live2004, coloured2004]
  rw [child]
  dsimp only [result2002]
  have child := child1
  unfold live2003 coloured2003 at child
  try dsimp only [live2004, coloured2004]
  rw [child]
  dsimp only [result2003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2005_agree_conditional : tree2005 = literal2005 := by
  rw [tree2005_def]
  rfl
theorem node2005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2005 live2005 coloured2005 = result2005 := by
  rw [tree2005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2006_agree_conditional
    (child0 : tree2004 = literal2004)
    (child1 : tree2005 = literal2005) : tree2006 = literal2006 := by
  rw [tree2006_def, child0, child1]
  rfl
theorem node2006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2004 live2004 coloured2004 = result2004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2005 live2005 coloured2005 = result2005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2006 live2006 coloured2006 = result2006 := by
  rw [tree2006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2004 coloured2004 at child
  try dsimp only [live2006, coloured2006]
  rw [child]
  dsimp only [result2004]
  have child := child1
  unfold live2005 coloured2005 at child
  try dsimp only [live2006, coloured2006]
  rw [child]
  dsimp only [result2005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2007_agree_conditional : tree2007 = literal2007 := by
  rw [tree2007_def]
  rfl
theorem node2007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2007 live2007 coloured2007 = result2007 := by
  rw [tree2007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2008_agree_conditional
    (child0 : tree2006 = literal2006)
    (child1 : tree2007 = literal2007) : tree2008 = literal2008 := by
  rw [tree2008_def, child0, child1]
  rfl
theorem node2008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2006 live2006 coloured2006 = result2006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2007 live2007 coloured2007 = result2007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2008 live2008 coloured2008 = result2008 := by
  rw [tree2008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2006 coloured2006 at child
  try dsimp only [live2008, coloured2008]
  rw [child]
  dsimp only [result2006]
  have child := child1
  unfold live2007 coloured2007 at child
  try dsimp only [live2008, coloured2008]
  rw [child]
  dsimp only [result2007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2009_agree_conditional : tree2009 = literal2009 := by
  rw [tree2009_def]
  rfl
theorem node2009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2009 live2009 coloured2009 = result2009 := by
  rw [tree2009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2010_agree_conditional
    (child0 : tree2008 = literal2008)
    (child1 : tree2009 = literal2009) : tree2010 = literal2010 := by
  rw [tree2010_def, child0, child1]
  rfl
theorem node2010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2008 live2008 coloured2008 = result2008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2009 live2009 coloured2009 = result2009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2010 live2010 coloured2010 = result2010 := by
  rw [tree2010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2008 coloured2008 at child
  try dsimp only [live2010, coloured2010]
  rw [child]
  dsimp only [result2008]
  have child := child1
  unfold live2009 coloured2009 at child
  try dsimp only [live2010, coloured2010]
  rw [child]
  dsimp only [result2009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2011_agree_conditional : tree2011 = literal2011 := by
  rw [tree2011_def]
  rfl
theorem node2011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2011 live2011 coloured2011 = result2011 := by
  rw [tree2011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2012_agree_conditional
    (child0 : tree2010 = literal2010)
    (child1 : tree2011 = literal2011) : tree2012 = literal2012 := by
  rw [tree2012_def, child0, child1]
  rfl
theorem node2012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2010 live2010 coloured2010 = result2010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2011 live2011 coloured2011 = result2011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2012 live2012 coloured2012 = result2012 := by
  rw [tree2012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2010 coloured2010 at child
  try dsimp only [live2012, coloured2012]
  rw [child]
  dsimp only [result2010]
  have child := child1
  unfold live2011 coloured2011 at child
  try dsimp only [live2012, coloured2012]
  rw [child]
  dsimp only [result2011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2013_agree_conditional : tree2013 = literal2013 := by
  rw [tree2013_def]
  rfl
theorem node2013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2013 live2013 coloured2013 = result2013 := by
  rw [tree2013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2014_agree_conditional
    (child0 : tree2012 = literal2012)
    (child1 : tree2013 = literal2013) : tree2014 = literal2014 := by
  rw [tree2014_def, child0, child1]
  rfl
theorem node2014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2012 live2012 coloured2012 = result2012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2013 live2013 coloured2013 = result2013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2014 live2014 coloured2014 = result2014 := by
  rw [tree2014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2012 coloured2012 at child
  try dsimp only [live2014, coloured2014]
  rw [child]
  dsimp only [result2012]
  have child := child1
  unfold live2013 coloured2013 at child
  try dsimp only [live2014, coloured2014]
  rw [child]
  dsimp only [result2013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2015_agree_conditional : tree2015 = literal2015 := by
  rw [tree2015_def]
  rfl
theorem node2015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2015 live2015 coloured2015 = result2015 := by
  rw [tree2015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
