import InitECandidate.Solver.MemSafe.Eb.Cost9
import InitECandidate.Solver.MemSafe.Eb.Tail15

/-!
# `execute_block`: the cost walk, part 10 (fresh allocations)
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

section cw10
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- `var rn = alloc(e); k` with a fresh unadopted block. -/
theorem cw_allocFresh {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {Bk : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hQT : ResIns rn QT) {n : BitVec 64} (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hk : ∀ w : BitVec 64, CW (PA E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.fbuf w n.toNat)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (1 + cAlloc + Bk) QT := by
  have hcr := callR_withpre (callR_pre (callR_alloc_heap (σ := σ))
    (Pre' := fun vs _ Γ p => ArgsOK guestC Γ p AllocSig.params vs ∧ vs = [.val (.word n)]) (fun _ _ _ _ _ _ h => ⟨h.1, n, h.2⟩))
  refine cw_decCallRW (W := fun g' => tabW.contains g' = true) hQT hcr (gwk_tab (by decide)) (fun w f => f = Fct.fbuf w n.toNat)
    cc_cAlloc ?_ ?_ hk
  · refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩
    intro s hs vs hvs callee Γ p hr hL
    exact ⟨argsOK_any_eval (by simp) (by simp) hvs, alloc_args (he s hs) hvs⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw f hf
    subst hf
    obtain ⟨⟨-, hvs⟩, ⟨hret, -⟩, hheap⟩ := hq
    subst hvs
    obtain ⟨q, hqv, hq8, hlive, hunal⟩ := hheap n rfl
    subst hqv
    obtain rfl : w = q := by simpa using hw.symm
    have hfb := retok_alloc hret
    exact fbuf_of_alloc hfb (ebRun_mono hr) hq8 hlive hunal

theorem cw_allocBloom {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) {n : BitVec 64} (hn8 : n.toNat % 8 = 0) (hpos : 0 < n.toNat)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    {Bk : Nat}
    (hk : ∀ w : BitVec 64, CW
      (PAX E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.fbuf w n.toNat) (BlmR w)) k Bk QT) :
    CW (PA E En S) (.decCall rn .one (nm "alloc") [e] k) (1 + cAlloc + Bk) QT := by
  refine cw_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine cw_decCallK (PreC := fun _ _ => True) hQT (FunSpec.and (funSpec_allocRel (σ := σ)) (gwk_tab (f := nm "alloc") (by decide)))
    (Inv.calleeCostP_of_calleeCost cc_cAlloc) (fun _ _ _ _ _ _ => trivial) ?_
  intro s hs hpa vs hvs callee v st ⟨hAR, hgl⟩ hst hsh
  have hvs' := alloc_args (he s (pak_pa hpa)) hvs
  subst hvs'
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  obtain ⟨hR, hAl⟩ := hAR
  have hre : EbRun E.Γ0 E.s0 E.p0 Γ (callEntryStateHOLFinite s callee) p := ebRun_loc hr callee (s.clock - 1)
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step (S := S) (W := fun g' => tabW.contains g' = true)
    (Pre := fun vs _ Γ p => ArgsOK guestC Γ p AllocSig.params vs) (D := fun _ _ _ _ => False)
    (Q := fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs AllocSig.ret v ∧ (AllocSig.grows = false → NewFresh Γ Γ' p p)) hR
    (fun g hgW => hgl v rfl g hgW) hr hL (argsOK_any (by simp) (by simp)) (fun _ _ _ _ h => h.elim)
    (tidy_gmiss hT hz).1 (tidy_gmiss hT hz).2
  obtain ⟨hmem, hglob, p'', hp'', hord'', hmono'', hvret⟩ := hAl (by simp [Good]) n p rfl (ebRun_ptrs hre) (ebRun_ord hre)
  obtain rfl : p' = p'' := Option.some.inj (hstp.1.hp'.symm.trans hp'')
  obtain ⟨q, rfl, hq8, hlive, hunal⟩ := hvret v rfl
  have hfb := retok_alloc hq.1
  have hordp := ebRun_ord hre
  have hordp' := ebRun_ord (ebRun_stp hre hstp)
  obtain ⟨q0, hq0, -, hL0, -⟩ := ebRun_G hre
  obtain rfl : p = q0 := (Option.some.inj (hq0.symm.trans (ebRun_ptrs hre))).symm
  obtain ⟨q1, hq1, -, hL1, -⟩ := hstp.1.hG'
  obtain rfl : p' = q1 := (Option.some.inj (hq1.symm.trans hstp.1.hp')).symm
  obtain ⟨hC', hBlw⟩ := below_after_alloc hC hordp' hL0 hL1 (hq.2 rfl)
  have hhp : p.hp ≤ q.toNat := by
    have := hunal q.toNat le_rfl (by omega)
    unfold Ptrs.Allocated at this
    have h2 := hlive.1
    by_contra hcon
    exact this (Or.inl ⟨h2, by omega⟩)
  refine cw_pre (hk q) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_, ?_⟩, lke_set (lke_restore hlk) rn _⟩
  · intro g hg
    rcases hg with hg | rfl
    · have := (holdsAll_loc hL' s.locals st.clock) g hg
      cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
    · exact fbuf_of_alloc hfb (ebRun_mono hr) hq8 hlive hunal
  · exact ⟨hC', hBlw.mono hhp, hq8, hlive.1, by have := hlive.2; omega⟩


end cw10

end InitECandidate.Solver.MemSafe.Eb
