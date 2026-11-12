import InitECandidate.Solver.MemSafe.Rcpt.RI

set_option autoImplicit false

/-!
# Callee specs for the `RI` walk: `alloc`, `logs_encoded_bound`, `encode_logs`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

/-- What `alloc(n)` gives: the old heap pointer `q`, at least `Fl` and the entry heap pointer. -/
def AllocR (a : AwE σ) (Fl : Nat) (vs : List (ValueHOL 64)) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∃ (n q : BitVec 64) (p'' : Ptrs), vs = [.val (.word n)] ∧ v = .val (.word q) ∧ Fl ≤ q.toNat ∧
    q.toNat % 8 = 0 ∧ ptrsOf t = some p'' ∧ q.toNat + n.toNat ≤ p''.hp ∧ p''.hp ≤ heapEnd ∧
    a.p0.hp ≤ q.toNat

theorem isp_alloc {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) (Fl : Nat) :
    ISp (RI a Fl) X (nm "alloc") (fun vs _ => ∃ n : BitVec 64, vs = [.val (.word n)]) (AllocR a Fl) := by
  have hspec := ((allocSpec_alloc (σ := σ) hC).and (allocEq_alloc (σ := σ) hC)).and
    (Helpers.funSpec_dom (σ := σ) (X := X) (nm "alloc"))
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨⟨hA, hB⟩, hD⟩ := hspec vs body callee rs hl s hs hloc _ hr
  obtain ⟨n, rfl⟩ := hP
  have hinv0 := hinv.1
  obtain ⟨Γ', p0', hG, hp, e1, e2, e3, e4, -⟩ := hinv0
  obtain ⟨pf, hpf, hFl⟩ := hinv.2.2
  rw [hp] at hpf
  cases hpf
  have hord : p0'.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
  obtain ⟨hm, hgo, p'', hp'', hord'', hmono, hret⟩ := hA hg n p0' rfl hp hord
  have hq := hB hg n p0' rfl hp v rfl
  obtain ⟨q, hq1, hq2, hq3, -⟩ := hret v rfl
  have hv1 : v = .val (.word (BitVec.ofNat 64 p0'.hp)) := hq
  have hqq : q = BitVec.ofNat 64 p0'.hp := by
    have := hq1.symm.trans hv1
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
    exact this
  have hlt : p0'.hp < 2 ^ 64 := by
    unfold Ptrs.Ordered at hord
    simp only [heapEnd] at hord
    omega
  have hqn : q.toNat = p0'.hp := by
    rw [hqq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
  have hmo' : p0'.Mono p'' := hmono
  refine ⟨⟨awInv_alloc hK hinv.1 hp'' hord'' (fun p' hp' => by rw [hp] at hp'; cases hp'; exact hmono)
    hm hD.1 hD.2 (fun g hg => hgo g hg), by rw [hm]; exact hinv.2.1, p'', hp'', ?_⟩,
    n, q, p'', rfl, hq1, ?_, hq2, hp'', ?_, ?_, ?_⟩
  · unfold Ptrs.Mono at hmo'; omega
  · omega
  · unfold Region.Live at hq3
    omega
  · unfold Ptrs.Ordered at hord''
    omega
  · unfold Ptrs.Mono at e4; omega

/-! ## `logs_encoded_bound` -/

theorem isp_bound {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) (Fl S : Nat) :
    ISp (RI a Fl) X (nm "logs_encoded_bound")
      (fun vs s => ∃ Lg : BitVec 64, argW vs 0 = some Lg ∧ BndB s.memory Lg ∧
        Sk s.memory Lg (lgN s.memory Lg) = S)
      (fun vs v s => v = .val (.word (BitVec.ofNat 64 (16 + S)))) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) (nm "logs_encoded_bound")
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  obtain ⟨Lg, hLg, hB, hS⟩ := hP
  subst hv
  have h1 := funSpec_bound (σ := σ) hC vs body callee rs hl s hs hloc _ hr (by simp [Good]) Lg hLg hB
  have h2 := hd vs body callee rs hl s hs hloc _ hr
  obtain ⟨hg, hm, hret⟩ := h1
  exact ⟨ri_stable hK Fl hinv hm hg h2.1 h2.2, by rw [hret v rfl, hS]⟩

/-! ## `encode_logs` -/

theorem isp_encLogs {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) (hA : AlignedDom X)
    (Fl S : Nat) :
    ISp (RI a Fl) X (nm "encode_logs")
      (fun vs s => ∃ D Lg : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some Lg ∧
        Env s.memory D Lg ∧ a.p0.hp ≤ D.toNat ∧ Sk s.memory Lg (lgN s.memory Lg) = S)
      (fun vs v s => ∃ k, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ k ≤ 9 + S) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) (nm "encode_logs")
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  obtain ⟨D, Lg, hD, hLg, hEnv, hDp, hS⟩ := hP
  subst hv
  have h1 := funSpec_encode_logsX (σ := σ) hC hA vs body callee rs hl s hs hloc _ hr (by simp [Good])
    D Lg hD hLg hEnv
  have h2 := hd vs body callee rs hl s hs hloc _ hr
  obtain ⟨hg, hmod, hret⟩ := h1
  obtain ⟨k, hk, k1, k2⟩ := hret v rfl
  refine ⟨ri_write hK hinv hg h2.1 h2.2 hmod ?_, k, hk, k1, by omega⟩
  · intro x ⟨hx1, hx2, hx3⟩
    have hE := hEnv.hE
    have hord := hK.hord
    unfold Ptrs.Ordered at hord
    refine ⟨?_, by omega⟩
    omega

end InitECandidate.Solver.MemSafe.Rcpt
