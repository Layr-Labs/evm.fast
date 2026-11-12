import InitECandidate.Solver.MemSafe.Eb.Cost20

/-!
# `execute_block`: the conditional cost
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

/-- **The cost bound of `execute_block`**, a closed expression in the cost hypotheses' bounds and the table constants. -/
def bExecBlock (Bpuc BT Bwd Bgpr Bcsr Bbmi : Nat) : Nat :=
  bHeadAll ((1 + cBalInit + 0) + bMid Bpuc (bLoop BT (bTF Bwd Bgpr Bcsr Bbmi)))

/-- **`execute_block`'s conditional cost.** Under `G`, the arguments, `JrNZ`, `ev` / `cur_cont` small and `EbPre`, the body costs at most
`bExecBlock …` ticks, given the conditional costs of `process_unchecked_system_transaction`, `process_transaction`,
`process_withdrawals`, `process_general_purpose_requests`, `compute_state_root` and `build_mpt_indexed` (at the preconditions
established at the calls), and the table bounds of everything else. -/
theorem condCost_execute_block {M Bpuc BT Bwd Bgpr Bcsr Bbmi : Nat} (hPucC : HypPucCost σ Bpuc) (hPtC : HypPtCost σ M BT)
    (hWdC : HypWdCost σ Bwd) (hGprC : HypGprCost σ Bgpr) (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi)
    (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M) (hWd : HypWd σ)
    (hGpr : HypGpr σ) (hK : HypKeepG σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "execute_block") ⟨[.any, .any], [], [nm "journal_n"], true⟩
      (CcPre EbPre) (bExecBlock Bpuc BT Bwd Bgpr Bcsr Bbmi) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hpre⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  obtain ⟨si0, hdr0, pl0, ntx0, ptxs0, nwd0, be0, c0, wd0, T1, T2, z, bh, bn, bsw, skw, hvs, hC, hbt, hbwd, hH⟩ := hpre
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_eb hl
  have hb0 := hbind 0 (by simp) (by rw [hvs]; simp)
  have hb1 := hbind 1 (by simp) (by rw [hvs]; simp)
  subst hvs
  simp only [List.getElem_cons_zero, List.getElem_cons_succ] at hb0 hb1
  let E : EbE σ := ⟨Γ, s, p⟩
  let En : Env := Env.set (Env.set (fun _ => none) (nm "si") (.val (.word si0))) (nm "hdr") (.val (.word hdr0))
  have hsi : En (nm "si") = some (.val (.word si0)) := by
    simp (config := { decide := true }) [En, Env.set]
  have hEnTx : En (nm "tx") = none := by
    simp (config := { decide := true }) [En, Env.set]
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  have hF := entryK_of_s0c (si0 := si0) (pl0 := pl0) (ntx0 := ntx0) (ptxs0 := ptxs0) (nwd0 := nwd0) (be0 := be0) (c0 := c0)
    (wd0 := wd0) (T1 := T1) (T2 := T2) (z := z) (bh := bh) (bn := bn) (bsw := bsw) (skw := skw) hbt hbwd
  have hw := cw_walk (E := E) hPucC hPtC hWdC hGprC hCsr hBmi hPuc hSft hPt hM hWd hGpr hK hE0 hsi hEnTx hF
  have hpa : PA E En (S0c si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, hH⟩, ?_⟩
    intro x w hx
    simp only [En, Env.set] at hx
    split_ifs at hx with h1 h2
    · subst h1; rw [hloc]; cases hx; exact hb1.1
    · subst h2; rw [hloc]; cases hx; exact hb0.1
  exact hw.1 s hs hpa hgood

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.condCost_execute_block
