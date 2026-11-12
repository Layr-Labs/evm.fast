import InitECandidate.Solver.MemSafe.Ptx.PtT8
import InitECandidate.Solver.MemSafe.HtabEntries.LstNewHL

/-!
# F3g: `lst_new(8, c)` with its cells (hand spec: `N = 0`, `CAP = c`, the array and the header join the typing)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- **`lst_new(lstE t, c)` with the cells it builds** (the precise version of `csumm_lst_newL`). -/
theorem sumSpec_lstNewV {t c : Nat} (ht : t ∈ lstTys) (hreg : (guestC.ty t).region = .heap)
    (hc0 : 0 < c) (hEC : lstE t * c < 2 ^ 64) :
    SumSpecA σ guestCtx guestC (HR σ) (nm "lst_new") (lnSigL t c) (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun _ _ Γ r t' Γ' => ∀ v, r = .returned v → LnQL t Γ (BitVec.ofNat 64 c) v t' Γ') := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hM : HooksMono guestC (HR σ) := Hooks.drvCfg_guestHooksR.mono
  have hLH := Hooks.lstHooks_guestR (σ := σ)
  have hcn : (BitVec.ofNat 64 c).toNat = c := toNat_ofNat_small (by
    have := (lstE_pos _ ht).1
    have := Nat.le_mul_of_pos_left c this
    omega)
  refine sumSpecA_of_returns (noExc_lst_new hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs _
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, -, -, hA, hB⟩ := lookupCode_two code_lst_new (by decide) hl'
  obtain ⟨p0, hp0, ha⟩ := hargs
  have hvs := args_eq2 ha
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hE : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE t)))) := by
    rw [hloc]; exact hA
  have hC : s0.locals.lookup (nm "cap") = some (.val (.word (BitVec.ofNat 64 c))) := by
    rw [hloc]; exact hB
  have H' := lnL_hoare hF hM hLH ht hreg hG0 hp0 (Cc := BitVec.ofNat 64 c) (by rw [hcn]; exact hc0)
    (by rw [hcn]; exact hEC) hE hC s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, hq⟩ := H' v rfl
  obtain ⟨l, q, hlv, hΓ, hm0, hm8, hm16⟩ := hq
  have hret : ∀ pf, ptrsOf (evaluateHOLFiniteState s0 lnBody).2 = some pf → ∀ w, r = .returned w →
      RetOK Γ' p0 pf [.val (.word (BitVec.ofNat 64 (lstE t))), .val (.word (BitVec.ofNat 64 c))]
        (lnSigL t c).ret w := by
    intro pf _ w hw
    rw [hv] at hw
    cases hw
    subst hlv
    intro i rt w' hi hfl
    match i, hi with
    | 0, hi =>
      simp only [lnSigL, List.getElem?_cons_zero, Option.some.injEq] at hi
      subst hi
      simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hfl
      subst hfl
      exact ⟨⟨l, t, 24⟩, by rw [hΓ]; simp, rfl, rfl⟩
    | _ + 1, hi => simp [lnSigL] at hi
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := lnSigL t c) (PWs := fun a => ProtCell guestC Γ0 a ∧
      CapPW [] s0 Γ0 a) (r := r) hT hp0 (fun _ h => h.elim) (fun h => by simp [lnSigL] at h) hret
  refine ⟨Γ', p0, p', ?_, fun w hw => ?_⟩
  · exact Frames.sumCore_pwM hc (fun a h => ⟨h.1, by obtain ⟨c', hc', -⟩ := h.2; simp at hc'⟩)
  · rw [hv] at hw
    cases hw
    exact ⟨l, q, hlv, hΓ, hm0, hm8, hm16⟩

end InitECandidate.Solver.MemSafe.Ptx
