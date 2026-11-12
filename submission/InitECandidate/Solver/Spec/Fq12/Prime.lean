import Mathlib.NumberTheory.LucasPrimality
import Mathlib.Tactic.NormNum.Prime

/-!
# The BN254 base-field prime

`fqP_prime : Nat.Prime fqP` for the BN254 base-field modulus
`fqP = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47`, by Lucas
certificates (`lucas_primality`) whose modular powers are evaluated by the kernel
(`powModAux`, structural recursion on a fuel bound, GMP-backed `Nat` arithmetic).
Small factors are certified by `norm_num`.
-/

namespace InitECandidate.Solver.Spec.Fq12

/-- `b ^ e % m` by binary exponentiation, with a fuel bound on the bit length of `e`. -/
def powModAux : Nat → Nat → Nat → Nat → Nat
  | 0, _, _, m => 1 % m
  | fuel + 1, b, e, m =>
      if e = 0 then 1 % m
      else
        let r := powModAux fuel (b * b % m) (e / 2) m
        if e % 2 = 1 then r * b % m else r

theorem powModAux_eq : ∀ (fuel b e m : Nat), e < 2 ^ fuel → powModAux fuel b e m = b ^ e % m
  | 0, b, e, m, h => by
      have : e = 0 := by simpa using h
      subst this; simp [powModAux]
  | fuel + 1, b, e, m, h => by
      unfold powModAux
      by_cases he : e = 0
      · subst he; simp
      · rw [if_neg he]
        have h2 : e / 2 < 2 ^ fuel := by rw [Nat.pow_succ] at h; omega
        have ih := powModAux_eq fuel (b * b % m) (e / 2) m h2
        dsimp only
        rw [ih, ← Nat.pow_mod, ← Nat.pow_two, ← Nat.pow_mul]
        have hd := Nat.div_add_mod e 2
        split
        · rename_i h1
          conv => rhs; rw [← hd, h1, Nat.pow_add, Nat.pow_one]
          rw [Nat.mul_mod, Nat.mod_mod, ← Nat.mul_mod]
        · rename_i h1
          have h0 : e % 2 = 0 := by omega
          conv => rhs; rw [← hd, h0, Nat.add_zero]

theorem zmod_pow_eq_one_iff {p : Nat} (hp : 1 < p) (a e : Nat) :
    ((a : ZMod p) ^ e = 1) ↔ a ^ e % p = 1 := by
  rw [← Nat.cast_pow, ← ZMod.natCast_mod, show (1 : ZMod p) = ((1 : Nat) : ZMod p) by simp,
    ZMod.natCast_eq_natCast_iff', Nat.mod_mod, Nat.mod_eq_of_lt hp]

theorem prime_dvd_prod {q : Nat} (hq : q.Prime) :
    ∀ L : List (Nat × Nat), (∀ x ∈ L, x.1.Prime) → q ∣ (L.map fun x => x.1 ^ x.2).prod →
      ∃ x ∈ L, q = x.1
  | [], _, h => by
      simp only [List.map_nil, List.prod_nil, Nat.dvd_one] at h
      exact absurd h hq.one_lt.ne'
  | x :: L, hL, h => by
      simp only [List.map_cons, List.prod_cons] at h
      rcases (Nat.Prime.dvd_mul hq).mp h with h1 | h1
      · have h2 := hq.dvd_of_dvd_pow h1
        exact ⟨x, List.mem_cons_self, (Nat.prime_dvd_prime_iff_eq hq (hL x List.mem_cons_self)).mp h2⟩
      · obtain ⟨y, hy, rfl⟩ := prime_dvd_prod hq L (fun y hy => hL y (List.mem_cons_of_mem _ hy)) h1
        exact ⟨y, List.mem_cons_of_mem _ hy, rfl⟩

/-- A Lucas certificate: `p - 1 = ∏ qᵢ ^ eᵢ` with prime `qᵢ`, `a ^ (p - 1) ≡ 1` and
`a ^ ((p - 1) / qᵢ) ≢ 1 (mod p)`, all powers evaluated by `powModAux 400`. -/
theorem prime_of_cert (p a : Nat) (L : List (Nat × Nat)) (hp : 1 < p) (hsz : p < 2 ^ 400)
    (hL : ∀ x ∈ L, x.1.Prime) (hprod : (L.map fun x => x.1 ^ x.2).prod = p - 1)
    (ha : powModAux 400 a (p - 1) p = 1)
    (hq : L.all (fun x => powModAux 400 a ((p - 1) / x.1) p != 1) = true) : p.Prime := by
  refine lucas_primality p (a : ZMod p) ?_ ?_
  · rw [zmod_pow_eq_one_iff hp, ← powModAux_eq 400 _ _ _ (by omega)]
    exact ha
  · intro q hqp hdvd
    rw [← hprod] at hdvd
    obtain ⟨x, hx, rfl⟩ := prime_dvd_prod hqp L hL hdvd
    have := List.all_eq_true.mp hq x hx
    rw [ne_eq, zmod_pow_eq_one_iff hp, ← powModAux_eq 400 _ _ _ (by
      exact Nat.lt_of_le_of_lt (Nat.div_le_self _ _) (by omega))]
    simpa using this

theorem p1263766531 : Nat.Prime 1263766531 :=
  prime_of_cert 1263766531 10 [(2, 1), (3, 1), (5, 1), (13, 1), (911, 1), (3557, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        norm_num)
    (by decide) (by decide +kernel) (by decide +kernel)

theorem p35385462869 : Nat.Prime 35385462869 :=
  prime_of_cert 35385462869 2 [(2, 2), (7, 1), (1263766531, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        exact ⟨by norm_num, by norm_num, p1263766531⟩)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

theorem p2480874801745591 : Nat.Prime 2480874801745591 :=
  prime_of_cert 2480874801745591 6 [(2, 1), (3, 2), (5, 1), (19, 1), (41, 1), (35385462869, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        exact ⟨by norm_num, by norm_num, by norm_num, by norm_num, by norm_num, p35385462869⟩)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

theorem p173171039 : Nat.Prime 173171039 :=
  prime_of_cert 173171039 13 [(2, 1), (73, 1), (89, 1), (13327, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

theorem p1853641 : Nat.Prime 1853641 := by norm_num
theorem p4562087 : Nat.Prime 4562087 := by norm_num

theorem p13427688667394608761327070753331941386769 :
    Nat.Prime 13427688667394608761327070753331941386769 :=
  prime_of_cert 13427688667394608761327070753331941386769 17
    [(2, 4), (3, 1), (7, 1), (11, 1), (1853641, 1), (4562087, 1), (173171039, 1),
      (2480874801745591, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        exact ⟨by norm_num, by norm_num, by norm_num, by norm_num, p1853641, p4562087,
          p173171039, p2480874801745591⟩)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

theorem p327599 : Nat.Prime 327599 := by norm_num

theorem p11465965001 : Nat.Prime 11465965001 :=
  prime_of_cert 11465965001 3 [(2, 3), (5, 4), (7, 1), (327599, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        exact ⟨by norm_num, by norm_num, by norm_num, p327599⟩)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

theorem p405928799 : Nat.Prime 405928799 :=
  prime_of_cert 405928799 22 [(2, 1), (11, 1), (3691, 1), (4999, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        norm_num)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

/-- The BN254 base-field modulus. -/
def fqP : Nat := 21888242871839275222246405745257275088696311157297823662689037894645226208583

theorem fqP_prime : Nat.Prime fqP :=
  prime_of_cert fqP 3
    [(2, 1), (3, 2), (13, 1), (29, 1), (67, 1), (229, 1), (311, 1), (983, 1), (11003, 1),
      (405928799, 1), (11465965001, 1), (13427688667394608761327070753331941386769, 1)]
    (by decide +kernel) (by decide +kernel)
    (by simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq]
        exact ⟨by norm_num, by norm_num, by norm_num, by norm_num, by norm_num, by norm_num,
          by norm_num, by norm_num, by norm_num, p405928799, p11465965001,
          p13427688667394608761327070753331941386769⟩)
    (by decide +kernel) (by decide +kernel) (by decide +kernel)

end InitECandidate.Solver.Spec.Fq12
