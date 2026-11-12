import InitECandidate.Solver.MemSafe.Eb.Final

/-!
# `execute_block`: the memory-safety `FunSpec`
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

/-- **`execute_block` is memory-safe.** From `G Γ s`, the good globals and `EbPre`, a return ends with `G Γ' t`, `KeepH`, the typing
extension, the allocator monotone, the journal globals non-null and `ev` / `cur_cont` small. -/
theorem funSpec_execute_block {M : Nat} (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    (hWd : HypWd σ) (hGpr : HypGpr σ) (hK : HypKeepG σ) :
    FunSpec σ guestCtx (nm "execute_block") (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (p : Ptrs),
      G guestC (HR σ) Γ s → ptrsOf s = some p → JrNZ s → EvCc s → EbPre vs s Γ p →
      ∃ (Γ' : Gam) (p' : Ptrs), G guestC (HR σ) Γ' t ∧ KeepH guestC Γ Γ' s t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧
        NewFresh Γ Γ' (Exb.gp0 p) p' ∧ (Exb.gp0 p).Mono p' ∧ JrNZ t ∧ EvCc t) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hloc r hr v hv Γ p hG hp hJ hE hpre
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
  have hh := eb_walk (E := E) hPuc hSft hPt hM hWd hGpr hK hE0 hsi hEnTx hF
  have hpa : PA E En (S0c si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn bsw skw) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, hH⟩, ?_⟩
    intro x w hx
    simp only [En, Env.set] at hx
    split_ifs at hx with h1 h2
    · subst h1; rw [hloc]; cases hx; exact hb1.1
    · subst h2; rw [hloc]; cases hx; exact hb0.1
  have hres := hh s hs hpa (by rw [hr, hv]; trivial)
  obtain ⟨Γ', p', hr'⟩ := hres v (by rw [hr, hv])
  obtain ⟨q, hq, hord, hL, -⟩ := id hr'.2.2.2.2.2.1
  obtain rfl : q = p' := Option.some.inj (hq.symm.trans hr'.2.1)
  exact ⟨Γ', q, hr'.2.2.2.2.2.1, keepH_of_run_g hr'.1 hr'.2.1 hr'.2.2.1 hr'.2.2.2.1 hr'.2.2.2.2.1 hL hord,
    hr'.2.1, hr'.2.2.2.1, hr'.2.2.2.2.1, hr'.2.2.1, hr'.2.2.2.2.2.2.1, ⟨hr'.2.2.2.2.2.2.2.1, hr'.2.2.2.2.2.2.2.2.1⟩⟩

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.funSpec_execute_block
