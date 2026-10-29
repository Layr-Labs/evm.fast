import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
theorem node1920_conditional
    (child1913 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1911 (830, 6) = (output1913, (830, 6)))
    (child1919 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1917 (830, 6) = (output1919, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1918 (830, 6) = (output1920, (830, 6)) := by
  rw [output1920_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1913 child1919

theorem node1921_conditional
    (child1920 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1918 (830, 6) = (output1920, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1919 (830, 6) = (output1921, (830, 6)) := by
  rw [output1921_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1920

theorem node1922_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1921 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1919 (830, 6) = (output1921, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1920 (830, 6) = (output1922, (830, 6)) := by
  rw [output1922_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1921

theorem node1923_conditional
    (child1922 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1920 (830, 6) = (output1922, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1921 (830, 6) = (output1923, (830, 6)) := by
  rw [output1923_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1922

theorem node1924_conditional
    (child1911 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1909 (830, 2) = (output1911, (830, 6)))
    (child1923 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1921 (830, 6) = (output1923, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1922 (830, 2) = (output1924, (830, 6)) := by
  rw [output1924_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1911 child1923

theorem node1925_conditional
    (child1924 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1922 (830, 2) = (output1924, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1923 (830, 2) = (output1925, (830, 6)) := by
  rw [output1925_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1924

theorem node1926_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1924 (830, 6) = (output1926, (830, 6)) := by
  rw [output1926_def]
  kernel_rfl

theorem node1927_conditional
    (child1926 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1924 (830, 6) = (output1926, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1925 (830, 6) = (output1927, (830, 6)) := by
  rw [output1927_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1926

theorem node1928_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1926 (830, 6) = (output1928, (830, 6)) := by
  rw [output1928_def]
  kernel_rfl

theorem node1929_conditional
    (child1928 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1926 (830, 6) = (output1928, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1927 (830, 6) = (output1929, (830, 6)) := by
  rw [output1929_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1928

theorem node1930_conditional
    (child1929 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1927 (830, 6) = (output1929, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1928 (830, 6) = (output1930, (830, 6)) := by
  rw [output1930_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1929 child99

theorem node1931_conditional
    (child1930 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1928 (830, 6) = (output1930, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1929 (830, 6) = (output1931, (830, 6)) := by
  rw [output1931_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1930

theorem node1932_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1931 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1929 (830, 6) = (output1931, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1930 (830, 6) = (output1932, (830, 6)) := by
  rw [output1932_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1931

theorem node1933_conditional
    (child1932 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1930 (830, 6) = (output1932, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1931 (830, 6) = (output1933, (830, 6)) := by
  rw [output1933_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1932

theorem node1934_conditional
    (child1927 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1925 (830, 6) = (output1927, (830, 6)))
    (child1933 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1931 (830, 6) = (output1933, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1932 (830, 6) = (output1934, (830, 6)) := by
  rw [output1934_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1927 child1933

theorem node1935_conditional
    (child1934 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1932 (830, 6) = (output1934, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1933 (830, 6) = (output1935, (830, 6)) := by
  rw [output1935_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1934

theorem node1936_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1935 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1933 (830, 6) = (output1935, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1934 (830, 6) = (output1936, (830, 6)) := by
  rw [output1936_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1935

theorem node1937_conditional
    (child1936 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1934 (830, 6) = (output1936, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1935 (830, 6) = (output1937, (830, 6)) := by
  rw [output1937_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1936

theorem node1938_conditional
    (child1925 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1923 (830, 2) = (output1925, (830, 6)))
    (child1937 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1935 (830, 6) = (output1937, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1936 (830, 2) = (output1938, (830, 6)) := by
  rw [output1938_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1925 child1937

theorem node1939_conditional
    (child1938 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1936 (830, 2) = (output1938, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1937 (830, 2) = (output1939, (830, 6)) := by
  rw [output1939_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1938

theorem node1940_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1938 (830, 6) = (output1940, (830, 6)) := by
  rw [output1940_def]
  kernel_rfl

theorem node1941_conditional
    (child1940 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1938 (830, 6) = (output1940, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1939 (830, 6) = (output1941, (830, 6)) := by
  rw [output1941_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1940

theorem node1942_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1940 (830, 6) = (output1942, (830, 6)) := by
  rw [output1942_def]
  kernel_rfl

theorem node1943_conditional
    (child1942 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1940 (830, 6) = (output1942, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1941 (830, 6) = (output1943, (830, 6)) := by
  rw [output1943_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1942

theorem node1944_conditional
    (child1943 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1941 (830, 6) = (output1943, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1942 (830, 6) = (output1944, (830, 6)) := by
  rw [output1944_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1943 child99

theorem node1945_conditional
    (child1944 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1942 (830, 6) = (output1944, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1943 (830, 6) = (output1945, (830, 6)) := by
  rw [output1945_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1944

theorem node1946_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1945 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1943 (830, 6) = (output1945, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1944 (830, 6) = (output1946, (830, 6)) := by
  rw [output1946_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1945

theorem node1947_conditional
    (child1946 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1944 (830, 6) = (output1946, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1945 (830, 6) = (output1947, (830, 6)) := by
  rw [output1947_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1946

theorem node1948_conditional
    (child1941 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1939 (830, 6) = (output1941, (830, 6)))
    (child1947 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1945 (830, 6) = (output1947, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1946 (830, 6) = (output1948, (830, 6)) := by
  rw [output1948_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1941 child1947

theorem node1949_conditional
    (child1948 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1946 (830, 6) = (output1948, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1947 (830, 6) = (output1949, (830, 6)) := by
  rw [output1949_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1948

theorem node1950_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1949 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1947 (830, 6) = (output1949, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1948 (830, 6) = (output1950, (830, 6)) := by
  rw [output1950_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1949

theorem node1951_conditional
    (child1950 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1948 (830, 6) = (output1950, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1949 (830, 6) = (output1951, (830, 6)) := by
  rw [output1951_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1950

theorem node1952_conditional
    (child1939 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1937 (830, 2) = (output1939, (830, 6)))
    (child1951 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1949 (830, 6) = (output1951, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1950 (830, 2) = (output1952, (830, 6)) := by
  rw [output1952_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1939 child1951

theorem node1953_conditional
    (child1952 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1950 (830, 2) = (output1952, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1951 (830, 2) = (output1953, (830, 6)) := by
  rw [output1953_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1952

theorem node1954_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1952 (830, 6) = (output1954, (830, 6)) := by
  rw [output1954_def]
  kernel_rfl

theorem node1955_conditional
    (child1954 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1952 (830, 6) = (output1954, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1953 (830, 6) = (output1955, (830, 6)) := by
  rw [output1955_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1954

theorem node1956_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1954 (830, 6) = (output1956, (830, 6)) := by
  rw [output1956_def]
  kernel_rfl

theorem node1957_conditional
    (child1956 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1954 (830, 6) = (output1956, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1955 (830, 6) = (output1957, (830, 6)) := by
  rw [output1957_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1956

theorem node1958_conditional
    (child1957 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1955 (830, 6) = (output1957, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1956 (830, 6) = (output1958, (830, 6)) := by
  rw [output1958_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1957 child99

theorem node1959_conditional
    (child1958 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1956 (830, 6) = (output1958, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1957 (830, 6) = (output1959, (830, 6)) := by
  rw [output1959_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1958

theorem node1960_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1959 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1957 (830, 6) = (output1959, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1958 (830, 6) = (output1960, (830, 6)) := by
  rw [output1960_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1959

theorem node1961_conditional
    (child1960 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1958 (830, 6) = (output1960, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1959 (830, 6) = (output1961, (830, 6)) := by
  rw [output1961_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1960

theorem node1962_conditional
    (child1955 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1953 (830, 6) = (output1955, (830, 6)))
    (child1961 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1959 (830, 6) = (output1961, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1960 (830, 6) = (output1962, (830, 6)) := by
  rw [output1962_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1955 child1961

theorem node1963_conditional
    (child1962 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1960 (830, 6) = (output1962, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1961 (830, 6) = (output1963, (830, 6)) := by
  rw [output1963_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1962

theorem node1964_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1963 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1961 (830, 6) = (output1963, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1962 (830, 6) = (output1964, (830, 6)) := by
  rw [output1964_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1963

theorem node1965_conditional
    (child1964 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1962 (830, 6) = (output1964, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1963 (830, 6) = (output1965, (830, 6)) := by
  rw [output1965_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1964

theorem node1966_conditional
    (child1953 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1951 (830, 2) = (output1953, (830, 6)))
    (child1965 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1963 (830, 6) = (output1965, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1964 (830, 2) = (output1966, (830, 6)) := by
  rw [output1966_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1953 child1965

theorem node1967_conditional
    (child1966 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1964 (830, 2) = (output1966, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1965 (830, 2) = (output1967, (830, 6)) := by
  rw [output1967_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1966

theorem node1968_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1966 (830, 6) = (output1968, (830, 6)) := by
  rw [output1968_def]
  kernel_rfl

theorem node1969_conditional
    (child1968 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1966 (830, 6) = (output1968, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1967 (830, 6) = (output1969, (830, 6)) := by
  rw [output1969_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1968

theorem node1970_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1968 (830, 6) = (output1970, (830, 6)) := by
  rw [output1970_def]
  kernel_rfl

theorem node1971_conditional
    (child1970 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1968 (830, 6) = (output1970, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1969 (830, 6) = (output1971, (830, 6)) := by
  rw [output1971_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1970

theorem node1972_conditional
    (child1971 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1969 (830, 6) = (output1971, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1970 (830, 6) = (output1972, (830, 6)) := by
  rw [output1972_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1971 child99

theorem node1973_conditional
    (child1972 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1970 (830, 6) = (output1972, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1971 (830, 6) = (output1973, (830, 6)) := by
  rw [output1973_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1972

theorem node1974_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1973 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1971 (830, 6) = (output1973, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1972 (830, 6) = (output1974, (830, 6)) := by
  rw [output1974_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1973

theorem node1975_conditional
    (child1974 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1972 (830, 6) = (output1974, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1973 (830, 6) = (output1975, (830, 6)) := by
  rw [output1975_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1974

theorem node1976_conditional
    (child1969 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1967 (830, 6) = (output1969, (830, 6)))
    (child1975 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1973 (830, 6) = (output1975, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1974 (830, 6) = (output1976, (830, 6)) := by
  rw [output1976_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1969 child1975

theorem node1977_conditional
    (child1976 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1974 (830, 6) = (output1976, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1975 (830, 6) = (output1977, (830, 6)) := by
  rw [output1977_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1976

theorem node1978_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1977 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1975 (830, 6) = (output1977, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1976 (830, 6) = (output1978, (830, 6)) := by
  rw [output1978_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1977

theorem node1979_conditional
    (child1978 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1976 (830, 6) = (output1978, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1977 (830, 6) = (output1979, (830, 6)) := by
  rw [output1979_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1978

theorem node1980_conditional
    (child1967 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1965 (830, 2) = (output1967, (830, 6)))
    (child1979 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1977 (830, 6) = (output1979, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1978 (830, 2) = (output1980, (830, 6)) := by
  rw [output1980_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1967 child1979

theorem node1981_conditional
    (child1980 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1978 (830, 2) = (output1980, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1979 (830, 2) = (output1981, (830, 6)) := by
  rw [output1981_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1980

theorem node1982_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1980 (830, 6) = (output1982, (830, 6)) := by
  rw [output1982_def]
  kernel_rfl

theorem node1983_conditional
    (child1982 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1980 (830, 6) = (output1982, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1981 (830, 6) = (output1983, (830, 6)) := by
  rw [output1983_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1982

theorem node1984_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1982 (830, 6) = (output1984, (830, 6)) := by
  rw [output1984_def]
  kernel_rfl

theorem node1985_conditional
    (child1984 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1982 (830, 6) = (output1984, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1983 (830, 6) = (output1985, (830, 6)) := by
  rw [output1985_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1984

theorem node1986_conditional
    (child1985 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1983 (830, 6) = (output1985, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1984 (830, 6) = (output1986, (830, 6)) := by
  rw [output1986_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1985 child99

theorem node1987_conditional
    (child1986 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1984 (830, 6) = (output1986, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1985 (830, 6) = (output1987, (830, 6)) := by
  rw [output1987_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1986

theorem node1988_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1987 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1985 (830, 6) = (output1987, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1986 (830, 6) = (output1988, (830, 6)) := by
  rw [output1988_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1987

theorem node1989_conditional
    (child1988 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1986 (830, 6) = (output1988, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1987 (830, 6) = (output1989, (830, 6)) := by
  rw [output1989_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1988

theorem node1990_conditional
    (child1983 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1981 (830, 6) = (output1983, (830, 6)))
    (child1989 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1987 (830, 6) = (output1989, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1988 (830, 6) = (output1990, (830, 6)) := by
  rw [output1990_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1983 child1989

theorem node1991_conditional
    (child1990 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1988 (830, 6) = (output1990, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1989 (830, 6) = (output1991, (830, 6)) := by
  rw [output1991_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1990

theorem node1992_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child1991 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1989 (830, 6) = (output1991, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1990 (830, 6) = (output1992, (830, 6)) := by
  rw [output1992_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child1991

theorem node1993_conditional
    (child1992 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1990 (830, 6) = (output1992, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1991 (830, 6) = (output1993, (830, 6)) := by
  rw [output1993_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1992

theorem node1994_conditional
    (child1981 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1979 (830, 2) = (output1981, (830, 6)))
    (child1993 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1991 (830, 6) = (output1993, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1992 (830, 2) = (output1994, (830, 6)) := by
  rw [output1994_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1981 child1993

theorem node1995_conditional
    (child1994 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1992 (830, 2) = (output1994, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1993 (830, 2) = (output1995, (830, 6)) := by
  rw [output1995_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1994

theorem node1996_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1994 (830, 6) = (output1996, (830, 6)) := by
  rw [output1996_def]
  kernel_rfl

theorem node1997_conditional
    (child1996 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1994 (830, 6) = (output1996, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1995 (830, 6) = (output1997, (830, 6)) := by
  rw [output1997_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1996

theorem node1998_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1996 (830, 6) = (output1998, (830, 6)) := by
  rw [output1998_def]
  kernel_rfl

theorem node1999_conditional
    (child1998 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1996 (830, 6) = (output1998, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1997 (830, 6) = (output1999, (830, 6)) := by
  rw [output1999_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child1998

theorem node2000_conditional
    (child1999 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1997 (830, 6) = (output1999, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1998 (830, 6) = (output2000, (830, 6)) := by
  rw [output2000_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1999 child99

theorem node2001_conditional
    (child2000 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1998 (830, 6) = (output2000, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1999 (830, 6) = (output2001, (830, 6)) := by
  rw [output2001_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2000

theorem node2002_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2001 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1999 (830, 6) = (output2001, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2000 (830, 6) = (output2002, (830, 6)) := by
  rw [output2002_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2001

theorem node2003_conditional
    (child2002 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2000 (830, 6) = (output2002, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2001 (830, 6) = (output2003, (830, 6)) := by
  rw [output2003_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2002

theorem node2004_conditional
    (child1997 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1995 (830, 6) = (output1997, (830, 6)))
    (child2003 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2001 (830, 6) = (output2003, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2002 (830, 6) = (output2004, (830, 6)) := by
  rw [output2004_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1997 child2003

theorem node2005_conditional
    (child2004 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2002 (830, 6) = (output2004, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2003 (830, 6) = (output2005, (830, 6)) := by
  rw [output2005_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2004

theorem node2006_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2005 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2003 (830, 6) = (output2005, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2004 (830, 6) = (output2006, (830, 6)) := by
  rw [output2006_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2005

theorem node2007_conditional
    (child2006 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2004 (830, 6) = (output2006, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2005 (830, 6) = (output2007, (830, 6)) := by
  rw [output2007_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2006

theorem node2008_conditional
    (child1995 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_1993 (830, 2) = (output1995, (830, 6)))
    (child2007 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2005 (830, 6) = (output2007, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2006 (830, 2) = (output2008, (830, 6)) := by
  rw [output2008_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1995 child2007

theorem node2009_conditional
    (child2008 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2006 (830, 2) = (output2008, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2007 (830, 2) = (output2009, (830, 6)) := by
  rw [output2009_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2008

theorem node2010_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2008 (830, 6) = (output2010, (830, 6)) := by
  rw [output2010_def]
  kernel_rfl

theorem node2011_conditional
    (child2010 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2008 (830, 6) = (output2010, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2009 (830, 6) = (output2011, (830, 6)) := by
  rw [output2011_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2010

theorem node2012_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2010 (830, 6) = (output2012, (830, 6)) := by
  rw [output2012_def]
  kernel_rfl

theorem node2013_conditional
    (child2012 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2010 (830, 6) = (output2012, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2011 (830, 6) = (output2013, (830, 6)) := by
  rw [output2013_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2012

theorem node2014_conditional
    (child2013 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2011 (830, 6) = (output2013, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2012 (830, 6) = (output2014, (830, 6)) := by
  rw [output2014_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2013 child99

theorem node2015_conditional
    (child2014 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2012 (830, 6) = (output2014, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2013 (830, 6) = (output2015, (830, 6)) := by
  rw [output2015_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2014

theorem node2016_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2015 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2013 (830, 6) = (output2015, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2014 (830, 6) = (output2016, (830, 6)) := by
  rw [output2016_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2015

theorem node2017_conditional
    (child2016 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2014 (830, 6) = (output2016, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2015 (830, 6) = (output2017, (830, 6)) := by
  rw [output2017_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2016

theorem node2018_conditional
    (child2011 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2009 (830, 6) = (output2011, (830, 6)))
    (child2017 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2015 (830, 6) = (output2017, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2016 (830, 6) = (output2018, (830, 6)) := by
  rw [output2018_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2011 child2017

theorem node2019_conditional
    (child2018 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2016 (830, 6) = (output2018, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2017 (830, 6) = (output2019, (830, 6)) := by
  rw [output2019_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2018

theorem node2020_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2019 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2017 (830, 6) = (output2019, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2018 (830, 6) = (output2020, (830, 6)) := by
  rw [output2020_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2019

theorem node2021_conditional
    (child2020 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2018 (830, 6) = (output2020, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2019 (830, 6) = (output2021, (830, 6)) := by
  rw [output2021_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2020

theorem node2022_conditional
    (child2009 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2007 (830, 2) = (output2009, (830, 6)))
    (child2021 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2019 (830, 6) = (output2021, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2020 (830, 2) = (output2022, (830, 6)) := by
  rw [output2022_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2009 child2021

theorem node2023_conditional
    (child2022 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2020 (830, 2) = (output2022, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2021 (830, 2) = (output2023, (830, 6)) := by
  rw [output2023_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2022

theorem node2024_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2022 (830, 6) = (output2024, (830, 6)) := by
  rw [output2024_def]
  kernel_rfl

theorem node2025_conditional
    (child2024 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2022 (830, 6) = (output2024, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2023 (830, 6) = (output2025, (830, 6)) := by
  rw [output2025_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2024

theorem node2026_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2024 (830, 6) = (output2026, (830, 6)) := by
  rw [output2026_def]
  kernel_rfl

theorem node2027_conditional
    (child2026 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2024 (830, 6) = (output2026, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2025 (830, 6) = (output2027, (830, 6)) := by
  rw [output2027_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2026

theorem node2028_conditional
    (child2027 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2025 (830, 6) = (output2027, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2026 (830, 6) = (output2028, (830, 6)) := by
  rw [output2028_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2027 child99

theorem node2029_conditional
    (child2028 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2026 (830, 6) = (output2028, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2027 (830, 6) = (output2029, (830, 6)) := by
  rw [output2029_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2028

theorem node2030_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2029 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2027 (830, 6) = (output2029, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2028 (830, 6) = (output2030, (830, 6)) := by
  rw [output2030_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2029

theorem node2031_conditional
    (child2030 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2028 (830, 6) = (output2030, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2029 (830, 6) = (output2031, (830, 6)) := by
  rw [output2031_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2030

theorem node2032_conditional
    (child2025 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2023 (830, 6) = (output2025, (830, 6)))
    (child2031 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2029 (830, 6) = (output2031, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2030 (830, 6) = (output2032, (830, 6)) := by
  rw [output2032_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2025 child2031

theorem node2033_conditional
    (child2032 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2030 (830, 6) = (output2032, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2031 (830, 6) = (output2033, (830, 6)) := by
  rw [output2033_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2032

theorem node2034_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2033 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2031 (830, 6) = (output2033, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2032 (830, 6) = (output2034, (830, 6)) := by
  rw [output2034_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2033

theorem node2035_conditional
    (child2034 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2032 (830, 6) = (output2034, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2033 (830, 6) = (output2035, (830, 6)) := by
  rw [output2035_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2034

theorem node2036_conditional
    (child2023 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2021 (830, 2) = (output2023, (830, 6)))
    (child2035 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2033 (830, 6) = (output2035, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2034 (830, 2) = (output2036, (830, 6)) := by
  rw [output2036_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2023 child2035

theorem node2037_conditional
    (child2036 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2034 (830, 2) = (output2036, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2035 (830, 2) = (output2037, (830, 6)) := by
  rw [output2037_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2036

theorem node2038_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2036 (830, 6) = (output2038, (830, 6)) := by
  rw [output2038_def]
  kernel_rfl

theorem node2039_conditional
    (child2038 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2036 (830, 6) = (output2038, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2037 (830, 6) = (output2039, (830, 6)) := by
  rw [output2039_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2038

theorem node2040_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2038 (830, 6) = (output2040, (830, 6)) := by
  rw [output2040_def]
  kernel_rfl

theorem node2041_conditional
    (child2040 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2038 (830, 6) = (output2040, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2039 (830, 6) = (output2041, (830, 6)) := by
  rw [output2041_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2040

theorem node2042_conditional
    (child2041 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2039 (830, 6) = (output2041, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2040 (830, 6) = (output2042, (830, 6)) := by
  rw [output2042_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2041 child99

theorem node2043_conditional
    (child2042 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2040 (830, 6) = (output2042, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2041 (830, 6) = (output2043, (830, 6)) := by
  rw [output2043_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2042

theorem node2044_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2043 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2041 (830, 6) = (output2043, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2042 (830, 6) = (output2044, (830, 6)) := by
  rw [output2044_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2043

theorem node2045_conditional
    (child2044 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2042 (830, 6) = (output2044, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2043 (830, 6) = (output2045, (830, 6)) := by
  rw [output2045_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2044

theorem node2046_conditional
    (child2039 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2037 (830, 6) = (output2039, (830, 6)))
    (child2045 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2043 (830, 6) = (output2045, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2044 (830, 6) = (output2046, (830, 6)) := by
  rw [output2046_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2039 child2045

theorem node2047_conditional
    (child2046 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2044 (830, 6) = (output2046, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2045 (830, 6) = (output2047, (830, 6)) := by
  rw [output2047_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2046

theorem node2048_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2047 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2045 (830, 6) = (output2047, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2046 (830, 6) = (output2048, (830, 6)) := by
  rw [output2048_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2047

theorem node2049_conditional
    (child2048 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2046 (830, 6) = (output2048, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2047 (830, 6) = (output2049, (830, 6)) := by
  rw [output2049_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2048

theorem node2050_conditional
    (child2037 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2035 (830, 2) = (output2037, (830, 6)))
    (child2049 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2047 (830, 6) = (output2049, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2048 (830, 2) = (output2050, (830, 6)) := by
  rw [output2050_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2037 child2049

theorem node2051_conditional
    (child2050 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2048 (830, 2) = (output2050, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2049 (830, 2) = (output2051, (830, 6)) := by
  rw [output2051_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2050

theorem node2052_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2050 (830, 6) = (output2052, (830, 6)) := by
  rw [output2052_def]
  kernel_rfl

theorem node2053_conditional
    (child2052 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2050 (830, 6) = (output2052, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2051 (830, 6) = (output2053, (830, 6)) := by
  rw [output2053_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2052

theorem node2054_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2052 (830, 6) = (output2054, (830, 6)) := by
  rw [output2054_def]
  kernel_rfl

theorem node2055_conditional
    (child2054 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2052 (830, 6) = (output2054, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2053 (830, 6) = (output2055, (830, 6)) := by
  rw [output2055_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2054

theorem node2056_conditional
    (child2055 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2053 (830, 6) = (output2055, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2054 (830, 6) = (output2056, (830, 6)) := by
  rw [output2056_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2055 child99

theorem node2057_conditional
    (child2056 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2054 (830, 6) = (output2056, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2055 (830, 6) = (output2057, (830, 6)) := by
  rw [output2057_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2056

theorem node2058_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2057 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2055 (830, 6) = (output2057, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2056 (830, 6) = (output2058, (830, 6)) := by
  rw [output2058_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2057

theorem node2059_conditional
    (child2058 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2056 (830, 6) = (output2058, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2057 (830, 6) = (output2059, (830, 6)) := by
  rw [output2059_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2058

theorem node2060_conditional
    (child2053 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2051 (830, 6) = (output2053, (830, 6)))
    (child2059 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2057 (830, 6) = (output2059, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2058 (830, 6) = (output2060, (830, 6)) := by
  rw [output2060_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2053 child2059

theorem node2061_conditional
    (child2060 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2058 (830, 6) = (output2060, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2059 (830, 6) = (output2061, (830, 6)) := by
  rw [output2061_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2060

theorem node2062_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2061 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2059 (830, 6) = (output2061, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2060 (830, 6) = (output2062, (830, 6)) := by
  rw [output2062_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2061

theorem node2063_conditional
    (child2062 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2060 (830, 6) = (output2062, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2061 (830, 6) = (output2063, (830, 6)) := by
  rw [output2063_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2062

theorem node2064_conditional
    (child2051 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2049 (830, 2) = (output2051, (830, 6)))
    (child2063 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2061 (830, 6) = (output2063, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2062 (830, 2) = (output2064, (830, 6)) := by
  rw [output2064_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2051 child2063

theorem node2065_conditional
    (child2064 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2062 (830, 2) = (output2064, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2063 (830, 2) = (output2065, (830, 6)) := by
  rw [output2065_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2064

theorem node2066_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2064 (830, 6) = (output2066, (830, 6)) := by
  rw [output2066_def]
  kernel_rfl

theorem node2067_conditional
    (child2066 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2064 (830, 6) = (output2066, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2065 (830, 6) = (output2067, (830, 6)) := by
  rw [output2067_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2066

theorem node2068_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2066 (830, 6) = (output2068, (830, 6)) := by
  rw [output2068_def]
  kernel_rfl

theorem node2069_conditional
    (child2068 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2066 (830, 6) = (output2068, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2067 (830, 6) = (output2069, (830, 6)) := by
  rw [output2069_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2068

theorem node2070_conditional
    (child2069 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2067 (830, 6) = (output2069, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2068 (830, 6) = (output2070, (830, 6)) := by
  rw [output2070_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2069 child99

theorem node2071_conditional
    (child2070 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2068 (830, 6) = (output2070, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2069 (830, 6) = (output2071, (830, 6)) := by
  rw [output2071_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2070

theorem node2072_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2071 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2069 (830, 6) = (output2071, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2070 (830, 6) = (output2072, (830, 6)) := by
  rw [output2072_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2071

theorem node2073_conditional
    (child2072 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2070 (830, 6) = (output2072, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2071 (830, 6) = (output2073, (830, 6)) := by
  rw [output2073_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2072

theorem node2074_conditional
    (child2067 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2065 (830, 6) = (output2067, (830, 6)))
    (child2073 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2071 (830, 6) = (output2073, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2072 (830, 6) = (output2074, (830, 6)) := by
  rw [output2074_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2067 child2073

theorem node2075_conditional
    (child2074 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2072 (830, 6) = (output2074, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2073 (830, 6) = (output2075, (830, 6)) := by
  rw [output2075_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2074

theorem node2076_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2075 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2073 (830, 6) = (output2075, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2074 (830, 6) = (output2076, (830, 6)) := by
  rw [output2076_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2075

theorem node2077_conditional
    (child2076 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2074 (830, 6) = (output2076, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2075 (830, 6) = (output2077, (830, 6)) := by
  rw [output2077_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2076

theorem node2078_conditional
    (child2065 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2063 (830, 2) = (output2065, (830, 6)))
    (child2077 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2075 (830, 6) = (output2077, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2076 (830, 2) = (output2078, (830, 6)) := by
  rw [output2078_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2065 child2077

theorem node2079_conditional
    (child2078 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2076 (830, 2) = (output2078, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2077 (830, 2) = (output2079, (830, 6)) := by
  rw [output2079_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2078

theorem node2080_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2078 (830, 6) = (output2080, (830, 6)) := by
  rw [output2080_def]
  kernel_rfl

theorem node2081_conditional
    (child2080 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2078 (830, 6) = (output2080, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2079 (830, 6) = (output2081, (830, 6)) := by
  rw [output2081_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2080

theorem node2082_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2080 (830, 6) = (output2082, (830, 6)) := by
  rw [output2082_def]
  kernel_rfl

theorem node2083_conditional
    (child2082 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2080 (830, 6) = (output2082, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2081 (830, 6) = (output2083, (830, 6)) := by
  rw [output2083_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2082

theorem node2084_conditional
    (child2083 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2081 (830, 6) = (output2083, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2082 (830, 6) = (output2084, (830, 6)) := by
  rw [output2084_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2083 child99

theorem node2085_conditional
    (child2084 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2082 (830, 6) = (output2084, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2083 (830, 6) = (output2085, (830, 6)) := by
  rw [output2085_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2084

theorem node2086_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2085 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2083 (830, 6) = (output2085, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2084 (830, 6) = (output2086, (830, 6)) := by
  rw [output2086_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2085

theorem node2087_conditional
    (child2086 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2084 (830, 6) = (output2086, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2085 (830, 6) = (output2087, (830, 6)) := by
  rw [output2087_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2086

theorem node2088_conditional
    (child2081 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2079 (830, 6) = (output2081, (830, 6)))
    (child2087 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2085 (830, 6) = (output2087, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2086 (830, 6) = (output2088, (830, 6)) := by
  rw [output2088_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2081 child2087

theorem node2089_conditional
    (child2088 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2086 (830, 6) = (output2088, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2087 (830, 6) = (output2089, (830, 6)) := by
  rw [output2089_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2088

theorem node2090_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2089 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2087 (830, 6) = (output2089, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2088 (830, 6) = (output2090, (830, 6)) := by
  rw [output2090_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2089

theorem node2091_conditional
    (child2090 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2088 (830, 6) = (output2090, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2089 (830, 6) = (output2091, (830, 6)) := by
  rw [output2091_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2090

theorem node2092_conditional
    (child2079 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2077 (830, 2) = (output2079, (830, 6)))
    (child2091 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2089 (830, 6) = (output2091, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2090 (830, 2) = (output2092, (830, 6)) := by
  rw [output2092_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2079 child2091

theorem node2093_conditional
    (child2092 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2090 (830, 2) = (output2092, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2091 (830, 2) = (output2093, (830, 6)) := by
  rw [output2093_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2092

theorem node2094_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2092 (830, 6) = (output2094, (830, 6)) := by
  rw [output2094_def]
  kernel_rfl

theorem node2095_conditional
    (child2094 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2092 (830, 6) = (output2094, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2093 (830, 6) = (output2095, (830, 6)) := by
  rw [output2095_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2094

theorem node2096_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2094 (830, 6) = (output2096, (830, 6)) := by
  rw [output2096_def]
  kernel_rfl

theorem node2097_conditional
    (child2096 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2094 (830, 6) = (output2096, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2095 (830, 6) = (output2097, (830, 6)) := by
  rw [output2097_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2096

theorem node2098_conditional
    (child2097 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2095 (830, 6) = (output2097, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2096 (830, 6) = (output2098, (830, 6)) := by
  rw [output2098_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2097 child99

theorem node2099_conditional
    (child2098 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2096 (830, 6) = (output2098, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2097 (830, 6) = (output2099, (830, 6)) := by
  rw [output2099_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2098

theorem node2100_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2099 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2097 (830, 6) = (output2099, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2098 (830, 6) = (output2100, (830, 6)) := by
  rw [output2100_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2099

theorem node2101_conditional
    (child2100 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2098 (830, 6) = (output2100, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2099 (830, 6) = (output2101, (830, 6)) := by
  rw [output2101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2100

theorem node2102_conditional
    (child2095 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2093 (830, 6) = (output2095, (830, 6)))
    (child2101 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2099 (830, 6) = (output2101, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2100 (830, 6) = (output2102, (830, 6)) := by
  rw [output2102_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2095 child2101

theorem node2103_conditional
    (child2102 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2100 (830, 6) = (output2102, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2101 (830, 6) = (output2103, (830, 6)) := by
  rw [output2103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2102

theorem node2104_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2103 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2101 (830, 6) = (output2103, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2102 (830, 6) = (output2104, (830, 6)) := by
  rw [output2104_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2103

theorem node2105_conditional
    (child2104 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2102 (830, 6) = (output2104, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2103 (830, 6) = (output2105, (830, 6)) := by
  rw [output2105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2104

theorem node2106_conditional
    (child2093 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2091 (830, 2) = (output2093, (830, 6)))
    (child2105 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2103 (830, 6) = (output2105, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2104 (830, 2) = (output2106, (830, 6)) := by
  rw [output2106_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2093 child2105

theorem node2107_conditional
    (child2106 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2104 (830, 2) = (output2106, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2105 (830, 2) = (output2107, (830, 6)) := by
  rw [output2107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2106

theorem node2108_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2106 (830, 6) = (output2108, (830, 6)) := by
  rw [output2108_def]
  kernel_rfl

theorem node2109_conditional
    (child2108 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2106 (830, 6) = (output2108, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2107 (830, 6) = (output2109, (830, 6)) := by
  rw [output2109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2108

theorem node2110_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2108 (830, 6) = (output2110, (830, 6)) := by
  rw [output2110_def]
  kernel_rfl

theorem node2111_conditional
    (child2110 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2108 (830, 6) = (output2110, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2109 (830, 6) = (output2111, (830, 6)) := by
  rw [output2111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2110

theorem node2112_conditional
    (child2111 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2109 (830, 6) = (output2111, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2110 (830, 6) = (output2112, (830, 6)) := by
  rw [output2112_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2111 child99

theorem node2113_conditional
    (child2112 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2110 (830, 6) = (output2112, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2111 (830, 6) = (output2113, (830, 6)) := by
  rw [output2113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2112

theorem node2114_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2113 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2111 (830, 6) = (output2113, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2112 (830, 6) = (output2114, (830, 6)) := by
  rw [output2114_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2113

theorem node2115_conditional
    (child2114 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2112 (830, 6) = (output2114, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2113 (830, 6) = (output2115, (830, 6)) := by
  rw [output2115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2114

theorem node2116_conditional
    (child2109 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2107 (830, 6) = (output2109, (830, 6)))
    (child2115 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2113 (830, 6) = (output2115, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2114 (830, 6) = (output2116, (830, 6)) := by
  rw [output2116_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2109 child2115

theorem node2117_conditional
    (child2116 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2114 (830, 6) = (output2116, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2115 (830, 6) = (output2117, (830, 6)) := by
  rw [output2117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2116

theorem node2118_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2117 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2115 (830, 6) = (output2117, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2116 (830, 6) = (output2118, (830, 6)) := by
  rw [output2118_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2117

theorem node2119_conditional
    (child2118 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2116 (830, 6) = (output2118, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2117 (830, 6) = (output2119, (830, 6)) := by
  rw [output2119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2118

theorem node2120_conditional
    (child2107 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2105 (830, 2) = (output2107, (830, 6)))
    (child2119 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2117 (830, 6) = (output2119, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2118 (830, 2) = (output2120, (830, 6)) := by
  rw [output2120_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2107 child2119

theorem node2121_conditional
    (child2120 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2118 (830, 2) = (output2120, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2119 (830, 2) = (output2121, (830, 6)) := by
  rw [output2121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2120

theorem node2122_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2120 (830, 6) = (output2122, (830, 6)) := by
  rw [output2122_def]
  kernel_rfl

theorem node2123_conditional
    (child2122 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2120 (830, 6) = (output2122, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2121 (830, 6) = (output2123, (830, 6)) := by
  rw [output2123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2122

theorem node2124_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2122 (830, 6) = (output2124, (830, 6)) := by
  rw [output2124_def]
  kernel_rfl

theorem node2125_conditional
    (child2124 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2122 (830, 6) = (output2124, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2123 (830, 6) = (output2125, (830, 6)) := by
  rw [output2125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2124

theorem node2126_conditional
    (child2125 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2123 (830, 6) = (output2125, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2124 (830, 6) = (output2126, (830, 6)) := by
  rw [output2126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2125 child99

theorem node2127_conditional
    (child2126 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2124 (830, 6) = (output2126, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2125 (830, 6) = (output2127, (830, 6)) := by
  rw [output2127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2126

theorem node2128_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2127 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2125 (830, 6) = (output2127, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2126 (830, 6) = (output2128, (830, 6)) := by
  rw [output2128_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2127

theorem node2129_conditional
    (child2128 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2126 (830, 6) = (output2128, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2127 (830, 6) = (output2129, (830, 6)) := by
  rw [output2129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2128

theorem node2130_conditional
    (child2123 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2121 (830, 6) = (output2123, (830, 6)))
    (child2129 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2127 (830, 6) = (output2129, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2128 (830, 6) = (output2130, (830, 6)) := by
  rw [output2130_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2123 child2129

theorem node2131_conditional
    (child2130 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2128 (830, 6) = (output2130, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2129 (830, 6) = (output2131, (830, 6)) := by
  rw [output2131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2130

theorem node2132_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2131 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2129 (830, 6) = (output2131, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2130 (830, 6) = (output2132, (830, 6)) := by
  rw [output2132_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2131

theorem node2133_conditional
    (child2132 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2130 (830, 6) = (output2132, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2131 (830, 6) = (output2133, (830, 6)) := by
  rw [output2133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2132

theorem node2134_conditional
    (child2121 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2119 (830, 2) = (output2121, (830, 6)))
    (child2133 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2131 (830, 6) = (output2133, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2132 (830, 2) = (output2134, (830, 6)) := by
  rw [output2134_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2121 child2133

theorem node2135_conditional
    (child2134 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2132 (830, 2) = (output2134, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2133 (830, 2) = (output2135, (830, 6)) := by
  rw [output2135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2134

theorem node2136_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2134 (830, 6) = (output2136, (830, 6)) := by
  rw [output2136_def]
  kernel_rfl

theorem node2137_conditional
    (child2136 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2134 (830, 6) = (output2136, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2135 (830, 6) = (output2137, (830, 6)) := by
  rw [output2137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2136

theorem node2138_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2136 (830, 6) = (output2138, (830, 6)) := by
  rw [output2138_def]
  kernel_rfl

theorem node2139_conditional
    (child2138 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2136 (830, 6) = (output2138, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2137 (830, 6) = (output2139, (830, 6)) := by
  rw [output2139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2138

theorem node2140_conditional
    (child2139 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2137 (830, 6) = (output2139, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2138 (830, 6) = (output2140, (830, 6)) := by
  rw [output2140_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2139 child99

theorem node2141_conditional
    (child2140 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2138 (830, 6) = (output2140, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2139 (830, 6) = (output2141, (830, 6)) := by
  rw [output2141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2140

theorem node2142_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2141 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2139 (830, 6) = (output2141, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2140 (830, 6) = (output2142, (830, 6)) := by
  rw [output2142_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2141

theorem node2143_conditional
    (child2142 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2140 (830, 6) = (output2142, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2141 (830, 6) = (output2143, (830, 6)) := by
  rw [output2143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2142

theorem node2144_conditional
    (child2137 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2135 (830, 6) = (output2137, (830, 6)))
    (child2143 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2141 (830, 6) = (output2143, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2142 (830, 6) = (output2144, (830, 6)) := by
  rw [output2144_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2137 child2143

theorem node2145_conditional
    (child2144 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2142 (830, 6) = (output2144, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2143 (830, 6) = (output2145, (830, 6)) := by
  rw [output2145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2144

theorem node2146_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2145 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2143 (830, 6) = (output2145, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2144 (830, 6) = (output2146, (830, 6)) := by
  rw [output2146_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2145

theorem node2147_conditional
    (child2146 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2144 (830, 6) = (output2146, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2145 (830, 6) = (output2147, (830, 6)) := by
  rw [output2147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2146

theorem node2148_conditional
    (child2135 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2133 (830, 2) = (output2135, (830, 6)))
    (child2147 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2145 (830, 6) = (output2147, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2146 (830, 2) = (output2148, (830, 6)) := by
  rw [output2148_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2135 child2147

theorem node2149_conditional
    (child2148 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2146 (830, 2) = (output2148, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2147 (830, 2) = (output2149, (830, 6)) := by
  rw [output2149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2148

theorem node2150_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2148 (830, 6) = (output2150, (830, 6)) := by
  rw [output2150_def]
  kernel_rfl

theorem node2151_conditional
    (child2150 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2148 (830, 6) = (output2150, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2149 (830, 6) = (output2151, (830, 6)) := by
  rw [output2151_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2150

theorem node2152_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2150 (830, 6) = (output2152, (830, 6)) := by
  rw [output2152_def]
  kernel_rfl

theorem node2153_conditional
    (child2152 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2150 (830, 6) = (output2152, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2151 (830, 6) = (output2153, (830, 6)) := by
  rw [output2153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2152

theorem node2154_conditional
    (child2153 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2151 (830, 6) = (output2153, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2152 (830, 6) = (output2154, (830, 6)) := by
  rw [output2154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2153 child99

theorem node2155_conditional
    (child2154 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2152 (830, 6) = (output2154, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2153 (830, 6) = (output2155, (830, 6)) := by
  rw [output2155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2154

theorem node2156_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2155 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2153 (830, 6) = (output2155, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2154 (830, 6) = (output2156, (830, 6)) := by
  rw [output2156_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2155

theorem node2157_conditional
    (child2156 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2154 (830, 6) = (output2156, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2155 (830, 6) = (output2157, (830, 6)) := by
  rw [output2157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2156

theorem node2158_conditional
    (child2151 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2149 (830, 6) = (output2151, (830, 6)))
    (child2157 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2155 (830, 6) = (output2157, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2156 (830, 6) = (output2158, (830, 6)) := by
  rw [output2158_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2151 child2157

theorem node2159_conditional
    (child2158 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2156 (830, 6) = (output2158, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2157 (830, 6) = (output2159, (830, 6)) := by
  rw [output2159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2158

theorem node2160_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2159 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2157 (830, 6) = (output2159, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2158 (830, 6) = (output2160, (830, 6)) := by
  rw [output2160_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2159

theorem node2161_conditional
    (child2160 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2158 (830, 6) = (output2160, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2159 (830, 6) = (output2161, (830, 6)) := by
  rw [output2161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2160

theorem node2162_conditional
    (child2149 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2147 (830, 2) = (output2149, (830, 6)))
    (child2161 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2159 (830, 6) = (output2161, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2160 (830, 2) = (output2162, (830, 6)) := by
  rw [output2162_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2149 child2161

theorem node2163_conditional
    (child2162 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2160 (830, 2) = (output2162, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2161 (830, 2) = (output2163, (830, 6)) := by
  rw [output2163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2162

theorem node2164_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2162 (830, 6) = (output2164, (830, 6)) := by
  rw [output2164_def]
  kernel_rfl

theorem node2165_conditional
    (child2164 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2162 (830, 6) = (output2164, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2163 (830, 6) = (output2165, (830, 6)) := by
  rw [output2165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2164

theorem node2166_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2164 (830, 6) = (output2166, (830, 6)) := by
  rw [output2166_def]
  kernel_rfl

theorem node2167_conditional
    (child2166 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2164 (830, 6) = (output2166, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2165 (830, 6) = (output2167, (830, 6)) := by
  rw [output2167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2166

theorem node2168_conditional
    (child2167 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2165 (830, 6) = (output2167, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2166 (830, 6) = (output2168, (830, 6)) := by
  rw [output2168_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2167 child99

theorem node2169_conditional
    (child2168 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2166 (830, 6) = (output2168, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2167 (830, 6) = (output2169, (830, 6)) := by
  rw [output2169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2168

theorem node2170_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2169 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2167 (830, 6) = (output2169, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2168 (830, 6) = (output2170, (830, 6)) := by
  rw [output2170_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2169

theorem node2171_conditional
    (child2170 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2168 (830, 6) = (output2170, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2169 (830, 6) = (output2171, (830, 6)) := by
  rw [output2171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2170

theorem node2172_conditional
    (child2165 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2163 (830, 6) = (output2165, (830, 6)))
    (child2171 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2169 (830, 6) = (output2171, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2170 (830, 6) = (output2172, (830, 6)) := by
  rw [output2172_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2165 child2171

theorem node2173_conditional
    (child2172 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2170 (830, 6) = (output2172, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2171 (830, 6) = (output2173, (830, 6)) := by
  rw [output2173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2172

theorem node2174_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2173 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2171 (830, 6) = (output2173, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2172 (830, 6) = (output2174, (830, 6)) := by
  rw [output2174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2173

theorem node2175_conditional
    (child2174 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2172 (830, 6) = (output2174, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2173 (830, 6) = (output2175, (830, 6)) := by
  rw [output2175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2174

theorem node2176_conditional
    (child2163 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2161 (830, 2) = (output2163, (830, 6)))
    (child2175 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2173 (830, 6) = (output2175, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2174 (830, 2) = (output2176, (830, 6)) := by
  rw [output2176_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2163 child2175

theorem node2177_conditional
    (child2176 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2174 (830, 2) = (output2176, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2175 (830, 2) = (output2177, (830, 6)) := by
  rw [output2177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2176

theorem node2178_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2176 (830, 6) = (output2178, (830, 6)) := by
  rw [output2178_def]
  kernel_rfl

theorem node2179_conditional
    (child2178 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2176 (830, 6) = (output2178, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2177 (830, 6) = (output2179, (830, 6)) := by
  rw [output2179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2178

theorem node2180_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2178 (830, 6) = (output2180, (830, 6)) := by
  rw [output2180_def]
  kernel_rfl

theorem node2181_conditional
    (child2180 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2178 (830, 6) = (output2180, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2179 (830, 6) = (output2181, (830, 6)) := by
  rw [output2181_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2180

theorem node2182_conditional
    (child2181 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2179 (830, 6) = (output2181, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2180 (830, 6) = (output2182, (830, 6)) := by
  rw [output2182_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2181 child99

theorem node2183_conditional
    (child2182 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2180 (830, 6) = (output2182, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2181 (830, 6) = (output2183, (830, 6)) := by
  rw [output2183_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2182

theorem node2184_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2183 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2181 (830, 6) = (output2183, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2182 (830, 6) = (output2184, (830, 6)) := by
  rw [output2184_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2183

theorem node2185_conditional
    (child2184 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2182 (830, 6) = (output2184, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2183 (830, 6) = (output2185, (830, 6)) := by
  rw [output2185_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2184

theorem node2186_conditional
    (child2179 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2177 (830, 6) = (output2179, (830, 6)))
    (child2185 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2183 (830, 6) = (output2185, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2184 (830, 6) = (output2186, (830, 6)) := by
  rw [output2186_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2179 child2185

theorem node2187_conditional
    (child2186 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2184 (830, 6) = (output2186, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2185 (830, 6) = (output2187, (830, 6)) := by
  rw [output2187_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2186

theorem node2188_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2187 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2185 (830, 6) = (output2187, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2186 (830, 6) = (output2188, (830, 6)) := by
  rw [output2188_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2187

theorem node2189_conditional
    (child2188 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2186 (830, 6) = (output2188, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2187 (830, 6) = (output2189, (830, 6)) := by
  rw [output2189_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2188

theorem node2190_conditional
    (child2177 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2175 (830, 2) = (output2177, (830, 6)))
    (child2189 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2187 (830, 6) = (output2189, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2188 (830, 2) = (output2190, (830, 6)) := by
  rw [output2190_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2177 child2189

theorem node2191_conditional
    (child2190 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2188 (830, 2) = (output2190, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2189 (830, 2) = (output2191, (830, 6)) := by
  rw [output2191_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2190

theorem node2192_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2190 (830, 6) = (output2192, (830, 6)) := by
  rw [output2192_def]
  kernel_rfl

theorem node2193_conditional
    (child2192 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2190 (830, 6) = (output2192, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2191 (830, 6) = (output2193, (830, 6)) := by
  rw [output2193_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2192

theorem node2194_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2192 (830, 6) = (output2194, (830, 6)) := by
  rw [output2194_def]
  kernel_rfl

theorem node2195_conditional
    (child2194 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2192 (830, 6) = (output2194, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2193 (830, 6) = (output2195, (830, 6)) := by
  rw [output2195_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2194

theorem node2196_conditional
    (child2195 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2193 (830, 6) = (output2195, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2194 (830, 6) = (output2196, (830, 6)) := by
  rw [output2196_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2195 child99

theorem node2197_conditional
    (child2196 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2194 (830, 6) = (output2196, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2195 (830, 6) = (output2197, (830, 6)) := by
  rw [output2197_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2196

theorem node2198_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2197 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2195 (830, 6) = (output2197, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2196 (830, 6) = (output2198, (830, 6)) := by
  rw [output2198_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2197

theorem node2199_conditional
    (child2198 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2196 (830, 6) = (output2198, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2197 (830, 6) = (output2199, (830, 6)) := by
  rw [output2199_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2198

theorem node2200_conditional
    (child2193 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2191 (830, 6) = (output2193, (830, 6)))
    (child2199 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2197 (830, 6) = (output2199, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2198 (830, 6) = (output2200, (830, 6)) := by
  rw [output2200_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2193 child2199

theorem node2201_conditional
    (child2200 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2198 (830, 6) = (output2200, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2199 (830, 6) = (output2201, (830, 6)) := by
  rw [output2201_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2200

theorem node2202_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2201 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2199 (830, 6) = (output2201, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2200 (830, 6) = (output2202, (830, 6)) := by
  rw [output2202_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2201

theorem node2203_conditional
    (child2202 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2200 (830, 6) = (output2202, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2201 (830, 6) = (output2203, (830, 6)) := by
  rw [output2203_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2202

theorem node2204_conditional
    (child2191 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2189 (830, 2) = (output2191, (830, 6)))
    (child2203 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2201 (830, 6) = (output2203, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2202 (830, 2) = (output2204, (830, 6)) := by
  rw [output2204_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2191 child2203

theorem node2205_conditional
    (child2204 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2202 (830, 2) = (output2204, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2203 (830, 2) = (output2205, (830, 6)) := by
  rw [output2205_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2204

theorem node2206_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2204 (830, 6) = (output2206, (830, 6)) := by
  rw [output2206_def]
  kernel_rfl

theorem node2207_conditional
    (child2206 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2204 (830, 6) = (output2206, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2205 (830, 6) = (output2207, (830, 6)) := by
  rw [output2207_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2206

theorem node2208_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2206 (830, 6) = (output2208, (830, 6)) := by
  rw [output2208_def]
  kernel_rfl

theorem node2209_conditional
    (child2208 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2206 (830, 6) = (output2208, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2207 (830, 6) = (output2209, (830, 6)) := by
  rw [output2209_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2208

theorem node2210_conditional
    (child2209 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2207 (830, 6) = (output2209, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2208 (830, 6) = (output2210, (830, 6)) := by
  rw [output2210_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2209 child99

theorem node2211_conditional
    (child2210 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2208 (830, 6) = (output2210, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2209 (830, 6) = (output2211, (830, 6)) := by
  rw [output2211_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2210

theorem node2212_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2211 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2209 (830, 6) = (output2211, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2210 (830, 6) = (output2212, (830, 6)) := by
  rw [output2212_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2211

theorem node2213_conditional
    (child2212 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2210 (830, 6) = (output2212, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2211 (830, 6) = (output2213, (830, 6)) := by
  rw [output2213_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2212

theorem node2214_conditional
    (child2207 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2205 (830, 6) = (output2207, (830, 6)))
    (child2213 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2211 (830, 6) = (output2213, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2212 (830, 6) = (output2214, (830, 6)) := by
  rw [output2214_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2207 child2213

theorem node2215_conditional
    (child2214 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2212 (830, 6) = (output2214, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2213 (830, 6) = (output2215, (830, 6)) := by
  rw [output2215_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2214

theorem node2216_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2215 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2213 (830, 6) = (output2215, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2214 (830, 6) = (output2216, (830, 6)) := by
  rw [output2216_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2215

theorem node2217_conditional
    (child2216 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2214 (830, 6) = (output2216, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2215 (830, 6) = (output2217, (830, 6)) := by
  rw [output2217_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2216

theorem node2218_conditional
    (child2205 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2203 (830, 2) = (output2205, (830, 6)))
    (child2217 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2215 (830, 6) = (output2217, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2216 (830, 2) = (output2218, (830, 6)) := by
  rw [output2218_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2205 child2217

theorem node2219_conditional
    (child2218 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2216 (830, 2) = (output2218, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2217 (830, 2) = (output2219, (830, 6)) := by
  rw [output2219_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2218

theorem node2220_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2218 (830, 6) = (output2220, (830, 6)) := by
  rw [output2220_def]
  kernel_rfl

theorem node2221_conditional
    (child2220 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2218 (830, 6) = (output2220, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2219 (830, 6) = (output2221, (830, 6)) := by
  rw [output2221_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2220

theorem node2222_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2220 (830, 6) = (output2222, (830, 6)) := by
  rw [output2222_def]
  kernel_rfl

theorem node2223_conditional
    (child2222 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2220 (830, 6) = (output2222, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2221 (830, 6) = (output2223, (830, 6)) := by
  rw [output2223_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2222

theorem node2224_conditional
    (child2223 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2221 (830, 6) = (output2223, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2222 (830, 6) = (output2224, (830, 6)) := by
  rw [output2224_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2223 child99

theorem node2225_conditional
    (child2224 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2222 (830, 6) = (output2224, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2223 (830, 6) = (output2225, (830, 6)) := by
  rw [output2225_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2224

theorem node2226_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2225 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2223 (830, 6) = (output2225, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2224 (830, 6) = (output2226, (830, 6)) := by
  rw [output2226_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2225

theorem node2227_conditional
    (child2226 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2224 (830, 6) = (output2226, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2225 (830, 6) = (output2227, (830, 6)) := by
  rw [output2227_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2226

theorem node2228_conditional
    (child2221 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2219 (830, 6) = (output2221, (830, 6)))
    (child2227 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2225 (830, 6) = (output2227, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2226 (830, 6) = (output2228, (830, 6)) := by
  rw [output2228_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2221 child2227

theorem node2229_conditional
    (child2228 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2226 (830, 6) = (output2228, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2227 (830, 6) = (output2229, (830, 6)) := by
  rw [output2229_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2228

theorem node2230_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2229 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2227 (830, 6) = (output2229, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2228 (830, 6) = (output2230, (830, 6)) := by
  rw [output2230_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2229

theorem node2231_conditional
    (child2230 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2228 (830, 6) = (output2230, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2229 (830, 6) = (output2231, (830, 6)) := by
  rw [output2231_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2230

theorem node2232_conditional
    (child2219 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2217 (830, 2) = (output2219, (830, 6)))
    (child2231 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2229 (830, 6) = (output2231, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2230 (830, 2) = (output2232, (830, 6)) := by
  rw [output2232_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2219 child2231

theorem node2233_conditional
    (child2232 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2230 (830, 2) = (output2232, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2231 (830, 2) = (output2233, (830, 6)) := by
  rw [output2233_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2232

theorem node2234_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2232 (830, 6) = (output2234, (830, 6)) := by
  rw [output2234_def]
  kernel_rfl

theorem node2235_conditional
    (child2234 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2232 (830, 6) = (output2234, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2233 (830, 6) = (output2235, (830, 6)) := by
  rw [output2235_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2234

theorem node2236_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2234 (830, 6) = (output2236, (830, 6)) := by
  rw [output2236_def]
  kernel_rfl

theorem node2237_conditional
    (child2236 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2234 (830, 6) = (output2236, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2235 (830, 6) = (output2237, (830, 6)) := by
  rw [output2237_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2236

theorem node2238_conditional
    (child2237 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2235 (830, 6) = (output2237, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2236 (830, 6) = (output2238, (830, 6)) := by
  rw [output2238_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2237 child99

theorem node2239_conditional
    (child2238 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2236 (830, 6) = (output2238, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2237 (830, 6) = (output2239, (830, 6)) := by
  rw [output2239_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2238

theorem node2240_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2239 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2237 (830, 6) = (output2239, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2238 (830, 6) = (output2240, (830, 6)) := by
  rw [output2240_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2239

theorem node2241_conditional
    (child2240 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2238 (830, 6) = (output2240, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2239 (830, 6) = (output2241, (830, 6)) := by
  rw [output2241_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2240

theorem node2242_conditional
    (child2235 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2233 (830, 6) = (output2235, (830, 6)))
    (child2241 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2239 (830, 6) = (output2241, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2240 (830, 6) = (output2242, (830, 6)) := by
  rw [output2242_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2235 child2241

theorem node2243_conditional
    (child2242 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2240 (830, 6) = (output2242, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2241 (830, 6) = (output2243, (830, 6)) := by
  rw [output2243_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2242

theorem node2244_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2243 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2241 (830, 6) = (output2243, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2242 (830, 6) = (output2244, (830, 6)) := by
  rw [output2244_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2243

theorem node2245_conditional
    (child2244 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2242 (830, 6) = (output2244, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2243 (830, 6) = (output2245, (830, 6)) := by
  rw [output2245_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2244

theorem node2246_conditional
    (child2233 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2231 (830, 2) = (output2233, (830, 6)))
    (child2245 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2243 (830, 6) = (output2245, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2244 (830, 2) = (output2246, (830, 6)) := by
  rw [output2246_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2233 child2245

theorem node2247_conditional
    (child2246 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2244 (830, 2) = (output2246, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2245 (830, 2) = (output2247, (830, 6)) := by
  rw [output2247_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2246

theorem node2248_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2246 (830, 6) = (output2248, (830, 6)) := by
  rw [output2248_def]
  kernel_rfl

theorem node2249_conditional
    (child2248 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2246 (830, 6) = (output2248, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2247 (830, 6) = (output2249, (830, 6)) := by
  rw [output2249_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2248

theorem node2250_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2248 (830, 6) = (output2250, (830, 6)) := by
  rw [output2250_def]
  kernel_rfl

theorem node2251_conditional
    (child2250 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2248 (830, 6) = (output2250, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2249 (830, 6) = (output2251, (830, 6)) := by
  rw [output2251_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2250

theorem node2252_conditional
    (child2251 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2249 (830, 6) = (output2251, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2250 (830, 6) = (output2252, (830, 6)) := by
  rw [output2252_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2251 child99

theorem node2253_conditional
    (child2252 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2250 (830, 6) = (output2252, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2251 (830, 6) = (output2253, (830, 6)) := by
  rw [output2253_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2252

theorem node2254_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2253 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2251 (830, 6) = (output2253, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2252 (830, 6) = (output2254, (830, 6)) := by
  rw [output2254_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2253

theorem node2255_conditional
    (child2254 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2252 (830, 6) = (output2254, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2253 (830, 6) = (output2255, (830, 6)) := by
  rw [output2255_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2254

theorem node2256_conditional
    (child2249 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2247 (830, 6) = (output2249, (830, 6)))
    (child2255 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2253 (830, 6) = (output2255, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2254 (830, 6) = (output2256, (830, 6)) := by
  rw [output2256_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2249 child2255

theorem node2257_conditional
    (child2256 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2254 (830, 6) = (output2256, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2255 (830, 6) = (output2257, (830, 6)) := by
  rw [output2257_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2256

theorem node2258_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2257 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2255 (830, 6) = (output2257, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2256 (830, 6) = (output2258, (830, 6)) := by
  rw [output2258_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2257

theorem node2259_conditional
    (child2258 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2256 (830, 6) = (output2258, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2257 (830, 6) = (output2259, (830, 6)) := by
  rw [output2259_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2258

theorem node2260_conditional
    (child2247 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2245 (830, 2) = (output2247, (830, 6)))
    (child2259 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2257 (830, 6) = (output2259, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2258 (830, 2) = (output2260, (830, 6)) := by
  rw [output2260_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2247 child2259

theorem node2261_conditional
    (child2260 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2258 (830, 2) = (output2260, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2259 (830, 2) = (output2261, (830, 6)) := by
  rw [output2261_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2260

theorem node2262_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2260 (830, 6) = (output2262, (830, 6)) := by
  rw [output2262_def]
  kernel_rfl

theorem node2263_conditional
    (child2262 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2260 (830, 6) = (output2262, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2261 (830, 6) = (output2263, (830, 6)) := by
  rw [output2263_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2262

theorem node2264_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2262 (830, 6) = (output2264, (830, 6)) := by
  rw [output2264_def]
  kernel_rfl

theorem node2265_conditional
    (child2264 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2262 (830, 6) = (output2264, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2263 (830, 6) = (output2265, (830, 6)) := by
  rw [output2265_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2264

theorem node2266_conditional
    (child2265 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2263 (830, 6) = (output2265, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2264 (830, 6) = (output2266, (830, 6)) := by
  rw [output2266_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2265 child99

theorem node2267_conditional
    (child2266 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2264 (830, 6) = (output2266, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2265 (830, 6) = (output2267, (830, 6)) := by
  rw [output2267_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2266

theorem node2268_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2267 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2265 (830, 6) = (output2267, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2266 (830, 6) = (output2268, (830, 6)) := by
  rw [output2268_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2267

theorem node2269_conditional
    (child2268 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2266 (830, 6) = (output2268, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2267 (830, 6) = (output2269, (830, 6)) := by
  rw [output2269_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2268

theorem node2270_conditional
    (child2263 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2261 (830, 6) = (output2263, (830, 6)))
    (child2269 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2267 (830, 6) = (output2269, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2268 (830, 6) = (output2270, (830, 6)) := by
  rw [output2270_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2263 child2269

theorem node2271_conditional
    (child2270 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2268 (830, 6) = (output2270, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2269 (830, 6) = (output2271, (830, 6)) := by
  rw [output2271_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2270

theorem node2272_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2271 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2269 (830, 6) = (output2271, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2270 (830, 6) = (output2272, (830, 6)) := by
  rw [output2272_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2271

theorem node2273_conditional
    (child2272 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2270 (830, 6) = (output2272, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2271 (830, 6) = (output2273, (830, 6)) := by
  rw [output2273_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2272

theorem node2274_conditional
    (child2261 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2259 (830, 2) = (output2261, (830, 6)))
    (child2273 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2271 (830, 6) = (output2273, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2272 (830, 2) = (output2274, (830, 6)) := by
  rw [output2274_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2261 child2273

theorem node2275_conditional
    (child2274 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2272 (830, 2) = (output2274, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2273 (830, 2) = (output2275, (830, 6)) := by
  rw [output2275_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2274

theorem node2276_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2274 (830, 6) = (output2276, (830, 6)) := by
  rw [output2276_def]
  kernel_rfl

theorem node2277_conditional
    (child2276 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2274 (830, 6) = (output2276, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2275 (830, 6) = (output2277, (830, 6)) := by
  rw [output2277_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2276

theorem node2278_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2276 (830, 6) = (output2278, (830, 6)) := by
  rw [output2278_def]
  kernel_rfl

theorem node2279_conditional
    (child2278 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2276 (830, 6) = (output2278, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2277 (830, 6) = (output2279, (830, 6)) := by
  rw [output2279_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2278

theorem node2280_conditional
    (child2279 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2277 (830, 6) = (output2279, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2278 (830, 6) = (output2280, (830, 6)) := by
  rw [output2280_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2279 child99

theorem node2281_conditional
    (child2280 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2278 (830, 6) = (output2280, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2279 (830, 6) = (output2281, (830, 6)) := by
  rw [output2281_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2280

theorem node2282_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2281 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2279 (830, 6) = (output2281, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2280 (830, 6) = (output2282, (830, 6)) := by
  rw [output2282_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2281

theorem node2283_conditional
    (child2282 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2280 (830, 6) = (output2282, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2281 (830, 6) = (output2283, (830, 6)) := by
  rw [output2283_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2282

theorem node2284_conditional
    (child2277 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2275 (830, 6) = (output2277, (830, 6)))
    (child2283 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2281 (830, 6) = (output2283, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2282 (830, 6) = (output2284, (830, 6)) := by
  rw [output2284_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2277 child2283

theorem node2285_conditional
    (child2284 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2282 (830, 6) = (output2284, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2283 (830, 6) = (output2285, (830, 6)) := by
  rw [output2285_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2284

theorem node2286_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2285 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2283 (830, 6) = (output2285, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2284 (830, 6) = (output2286, (830, 6)) := by
  rw [output2286_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2285

theorem node2287_conditional
    (child2286 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2284 (830, 6) = (output2286, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2285 (830, 6) = (output2287, (830, 6)) := by
  rw [output2287_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2286

theorem node2288_conditional
    (child2275 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2273 (830, 2) = (output2275, (830, 6)))
    (child2287 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2285 (830, 6) = (output2287, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2286 (830, 2) = (output2288, (830, 6)) := by
  rw [output2288_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2275 child2287

theorem node2289_conditional
    (child2288 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2286 (830, 2) = (output2288, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2287 (830, 2) = (output2289, (830, 6)) := by
  rw [output2289_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2288

theorem node2290_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2288 (830, 6) = (output2290, (830, 6)) := by
  rw [output2290_def]
  kernel_rfl

theorem node2291_conditional
    (child2290 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2288 (830, 6) = (output2290, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2289 (830, 6) = (output2291, (830, 6)) := by
  rw [output2291_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2290

theorem node2292_conditional
    (child2291 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2289 (830, 6) = (output2291, (830, 6)))
    (child467 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_465 (830, 6) = (output467, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2290 (830, 6) = (output2292, (830, 6)) := by
  rw [output2292_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2291 child467

theorem node2293_conditional
    (child2292 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2290 (830, 6) = (output2292, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2291 (830, 6) = (output2293, (830, 6)) := by
  rw [output2293_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2292

theorem node2294_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2293 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2291 (830, 6) = (output2293, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2292 (830, 6) = (output2294, (830, 6)) := by
  rw [output2294_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2293

theorem node2295_conditional
    (child2294 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2292 (830, 6) = (output2294, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2293 (830, 6) = (output2295, (830, 6)) := by
  rw [output2295_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2294

theorem node2296_conditional
    (child2289 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2287 (830, 2) = (output2289, (830, 6)))
    (child2295 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2293 (830, 6) = (output2295, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2294 (830, 2) = (output2296, (830, 6)) := by
  rw [output2296_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2289 child2295

theorem node2297_conditional
    (child2296 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2294 (830, 2) = (output2296, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2295 (830, 2) = (output2297, (830, 6)) := by
  rw [output2297_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2296

theorem node2298_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2296 (830, 6) = (output2298, (830, 6)) := by
  rw [output2298_def]
  kernel_rfl

theorem node2299_conditional
    (child2298 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2296 (830, 6) = (output2298, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2297 (830, 6) = (output2299, (830, 6)) := by
  rw [output2299_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2298

theorem node2300_conditional
    (child2299 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2297 (830, 6) = (output2299, (830, 6)))
    (child481 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_479 (830, 6) = (output481, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2298 (830, 6) = (output2300, (830, 6)) := by
  rw [output2300_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child2299 child481

theorem node2301_conditional
    (child2300 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2298 (830, 6) = (output2300, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2299 (830, 6) = (output2301, (830, 6)) := by
  rw [output2301_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2300

theorem node2302_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child2301 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2299 (830, 6) = (output2301, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2300 (830, 6) = (output2302, (830, 6)) := by
  rw [output2302_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child2301

theorem node2303_conditional
    (child2302 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2300 (830, 6) = (output2302, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_2301 (830, 6) = (output2303, (830, 6)) := by
  rw [output2303_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2302

#print axioms node2303_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
