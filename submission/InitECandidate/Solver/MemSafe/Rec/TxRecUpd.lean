import InitECandidate.Solver.MemSafe.Rec.TxRecLi

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: `ET2` under a store into one fact slot

`ear_mod`: `EAr` survives a block store; `et2_upd`: `ET2` with new flags after a one-slot store whose new `TF` is known.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

variable {σ : Type} {X : Ctx 64}

theorem ear_mod {a : Act σ} {Ar A cnt Pt Nt : BitVec 64} {Γ : Gam} {q : Ptrs} {mem mem' : Mem}
    {R : BitVec 64 → Prop} (hmod : ModifiesOnly R mem mem') (hR : ∀ y, R y → Overlap Ar.toNat 400 y)
    (hK' : TxK Ar Pt Nt mem') (h : EAr a Ar A cnt Pt Nt Γ q mem) : EAr a Ar A cnt Pt Nt Γ q mem' := by
  obtain ⟨hfz, hsin, hP, hN, hA, hdj, -⟩ := h
  refine ⟨hfz, ?_, hP, hN, hA, hdj, hK'⟩
  have hse := heapEnd_lt64
  have key : ∀ y : BitVec 64, A.toNat ≤ y.toNat → y.toNat < A.toNat + 16 * cnt.toNat →
      rd mem' y = rd mem y := fun y h1 h2 => rd_congr (hmod _ fun hr => hdj _ (hR _ hr) ⟨h1, h2⟩)
  intro k hk
  have hs := hsin k hk
  have e1 : (A + BitVec.ofNat 64 (16 * k)).toNat = A.toNat + 16 * k := tnl _ _ (by omega)
  have e2 : (A + BitVec.ofNat 64 (16 * k + 8)).toNat = A.toNat + (16 * k + 8) := tnl _ _ (by omega)
  rw [key _ (by omega) (by omega), key _ (by omega) (by omega)]
  exact hs

theorem et2_upd {a : Act σ} {Ar A cnt Pt Nt : BitVec 64} {Γ : Gam} {q : Ptrs} {mem mem' : Mem}
    {g : LocalsH} {b27 b35 b27' b35' : Bool} (f0 : Nat) (hf0 : f0 < 50)
    (hmod : ∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * f0) → mem' y = mem y)
    (hTF : TF Ar Γ mem') (ho : ∀ f, f ≠ f0 → f ≤ 50 → cl Ar mem' f = cl Ar mem f)
    (hf27 : b27' = true → b27 = true ∧ f0 ≠ 27) (hf35 : b35' = true → b35 = true ∧ f0 ≠ 35)
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (hB : BlkF Ar 400 Γ q)
    (hK : (f0 ≠ 19 ∧ f0 ≠ 26 ∧ f0 ≠ 27) ∨ (f0 = 26 ∧ b27 = true) ∨ TxK Ar Pt Nt mem')
    (h : ET2 a Ar A cnt Pt Nt b27 b35 Γ q mem g) : ET2 a Ar A cnt Pt Nt b27' b35' Γ q mem' g := by
  obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := h
  have hK0 : TxK Ar Pt Nt mem := hEA.2.2.2.2.2.2
  have hmod' : ModifiesOnly (fun y => y = Ar + BitVec.ofNat 64 (8 * f0)) mem mem' := fun y hy => hmod y hy
  have hKn : TxK Ar Pt Nt mem' := by
    rcases hK with ⟨n19, n26, n27⟩ | ⟨e26, hb⟩ | hK
    · exact txk_store hmod' (fun y hy => by rw [hy]; exact blkcell hAr (by omega)) hB hT (ho 19 (Ne.symm n19) (by norm_num))
        (ho 26 (Ne.symm n26) (by norm_num)) (ho 27 (Ne.symm n27) (by norm_num)) hK0
    · subst e26
      have z27 : cl Ar mem' 27 = 0 := by rw [ho 27 (by norm_num) (by norm_num)]; exact h27 hb
      refine ⟨by rw [ho 19 (by norm_num) (by norm_num)]; exact hK0.1, fun j hj => ?_⟩
      rw [z27] at hj
      exact absurd hj (by simp)
    · exact hK
  refine ⟨⟨hTF, fun hb => ?_, fun hb => ?_⟩, ear_mod (R := fun y => y = Ar + BitVec.ofNat 64 (8 * f0))
    hmod' (fun y hy => by rw [hy]; exact blkcell hAr (by omega)) hKn hEA⟩
  · obtain ⟨h1, h2⟩ := hf27 hb
    rw [ho 27 (Ne.symm h2) (by norm_num)]; exact h27 h1
  · obtain ⟨h1, h2⟩ := hf35 hb
    rw [ho 35 (Ne.symm h2) (by norm_num)]; exact h35 h1

end InitECandidate.Solver.MemSafe.Rec
