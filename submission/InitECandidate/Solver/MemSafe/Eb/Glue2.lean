import InitECandidate.Solver.MemSafe.Eb.Glue1

/-!
# `execute_block`: the loop ledger from what the head leaves
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem led_of_head {S0 S' : FS} {Z : List MlS} {w t r lg rq rl ntx0 nwd0 be0 c0 wd0 w1 w2 w3 w4 : BitVec 64}
    (hout : HeadOut S0 S' Z w t r lg rq rl ntx0) (hsub : ∀ f, S0 f → S' f)
    (hgbe : S0 (Fct.gval nmBe be0)) (hobe : S0 (Fct.obj be0 tBOS 120))
    (hcbe : S0 (Fct.cellv (be0 + BitVec.ofNat 64 32) c0)) (hibe : S0 (Fct.inval c0 20))
    (howd : S0 (Fct.obj wd0 tBOS (16 * nwd0.toNat))) (hbew : S0 (Fct.prop (be0 ≠ wd0)))
    (hbs : ∃ x, S0 (Fct.gobj (nm "bs") x tBS)) (hsk : ∃ x, S0 (Fct.gobj (nm "sk_buf") x tB64))
    (hbd : ntx0.toNat < 2 ^ 50) (hbd24 : ntx0.toNat < 2 ^ 24) (hbwd : nwd0.toNat < 2 ^ 50)
    (hrd0 : ∀ f, S0 f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y →
      y = be0 + BitVec.ofNat 64 32 ∨ ∃ o : Nat, o % 8 = 0 ∧ o + 8 ≤ 16 * nwd0.toNat ∧ y = wd0 + BitVec.ofNat 64 o) :
    Led (SPlus S' w1 w2 w3 w4 w t r be0 wd0) w t r lg rl be0 c0 wd0 ntx0 nwd0 0 := by
  have up : ∀ f, S' f → SPlus S' w1 w2 w3 w4 w t r be0 wd0 f := fun f hf => Or.inl (Or.inl hf)
  refine ⟨up _ hout.led.gobj, up _ hout.led.obj, up _ hout.otxs, up _ hout.orcs, up _ hout.olg, up _ hout.orl,
    up _ hout.c24, up _ hout.c32, up _ hout.c40, up _ hout.c72, up _ (hsub _ hgbe), up _ (hsub _ hobe),
    up _ (hsub _ hcbe), up _ (hsub _ hibe), up _ (hsub _ howd), ?_, up _ hout.wt, up _ hout.wr,
    Or.inr (Or.inl rfl), Or.inr (Or.inr (Or.inl rfl)), up _ hout.dtr, Or.inr (Or.inr (Or.inr (Or.inl rfl))),
    Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))), Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))),
    Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))), up _ (hsub _ hbew), hbd, hbd24, hbwd, ?_⟩
  · obtain ⟨x1, h1⟩ := hbs
    obtain ⟨x2, h2⟩ := hsk
    exact ⟨⟨x1, up _ (hsub _ h1)⟩, ⟨w1, Or.inl (Or.inr (Or.inl rfl))⟩, ⟨w4, Or.inl (Or.inr (Or.inr (Or.inr (Or.inr rfl))))⟩,
      ⟨w2, Or.inl (Or.inr (Or.inr (Or.inl rfl)))⟩, ⟨w3, Or.inl (Or.inr (Or.inr (Or.inr (Or.inl rfl))))⟩, ⟨x2, up _ (hsub _ h2)⟩⟩
  · intro f hf hnp y hy
    rcases hf with (hf | hf) | hf
    · rcases hout.led.rd f hf hnp y hy with ⟨f0, hf0, hnp0, hr0⟩ | hA
      · rcases hrd0 f0 hf0 hnp0 y hr0 with rfl | ⟨o, h8, hle, rfl⟩
        · exact Or.inr (Or.inl rfl)
        · exact Or.inr (Or.inr (Or.inr ⟨o, h8, hle, rfl⟩))
      · simp only [List.mem_cons, List.not_mem_nil, or_false] at hA
        rcases hA with rfl | rfl | rfl | rfl | rfl | rfl | rfl
        · exact Or.inl ⟨80, by simp, rfl⟩
        · exact Or.inl ⟨72, by simp, rfl⟩
        · exact Or.inl ⟨56, by simp, rfl⟩
        · exact Or.inl ⟨40, by simp, rfl⟩
        · exact Or.inl ⟨32, by simp, rfl⟩
        · exact Or.inl ⟨24, by simp, rfl⟩
        · exact Or.inl ⟨64, by simp, rfl⟩
    · rcases hf with rfl | rfl | rfl | rfl <;> exact absurd hy (fun h => h)
    · rcases hf with rfl | rfl | rfl | rfl | rfl | rfl <;> exact absurd hy (fun h => h)

end InitECandidate.Solver.MemSafe.Eb
