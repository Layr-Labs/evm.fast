import InitECandidate.Solver.MemSafe.Eb.Tail14
import InitECandidate.Solver.MemSafe.Eb.Alloc

/-!
# `execute_block`: `var bloom = alloc(256); k` from a heap-part state, handing on the "everything is below" fact
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

/-- After a non-growing step from a heap-part typing, the objects are still heap objects of the same types, and end where they did. -/
theorem below_after_alloc {Γ Γ' : Gam} {p p' : Ptrs} (hC : CPre Γ) (hord' : p'.Ordered) (hL : Layout guestC p Γ)
    (hL' : Layout guestC p' Γ') (hnf : NewFresh Γ Γ' p p) :
    CPre Γ' ∧ Aw.Below Γ' p.hp := by
  have key : ∀ o ∈ Γ', ∃ o0 ∈ Γ, o0.base = o.base ∧ o0.ty = o.ty ∧ o.hi ≤ o0.hi := by
    intro o ho
    have hpos := (hL'.1 o ho).2.2.1
    have hhi : o.hi ≤ scratchEnd := by
      have := (hL'.1 o ho).2.2.2.2
      unfold Region.Live at this
      show o.lo + o.size ≤ scratchEnd
      unfold Obj.lo at *
      obtain ⟨q1, q2, q3, q4, q5, -⟩ := hord'
      split at this <;> omega
    have hs : scratchEnd < 2 ^ 64 := by decide
    have ha : (BitVec.ofNat 64 (o.hi - 1)).toNat = o.hi - 1 := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    rcases hnf o ho (BitVec.ofNat 64 (o.hi - 1)) (by rw [ha]; unfold Obj.hi Obj.lo; omega) (by rw [ha]; unfold Obj.hi; omega)
      with ⟨o0, ho0, hb, ht, h1, h2⟩ | hf
    · exact ⟨o0, ho0, hb, ht, by rw [ha] at h2; omega⟩
    · unfold Fresh at hf; omega
  refine ⟨⟨fun o ho => ?_, fun o ho => ?_⟩, fun o ho => ?_⟩
  · obtain ⟨o0, ho0, -, ht, -⟩ := key o ho
    rw [← ht]; exact hC.1 o0 ho0
  · obtain ⟨o0, ho0, -, ht, -⟩ := key o ho
    rw [← ht]; exact hC.2 o0 ho0
  · obtain ⟨o0, ho0, -, ht, hh⟩ := key o ho
    have := (live_of hL ho0).1 (hC.1 o0 ho0)
    omega

section bloom
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem hdecAllocBloom {rn : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) {n : BitVec 64} (hn8 : n.toNat % 8 = 0) (hpos : 0 < n.toNat)
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true))
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx
      (PAX E (En.set rn (.val (.word w))) (fun f => S f ∨ f = Fct.fbuf w n.toNat) (BlmR w)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [e] k) QT := by
  refine hoare_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine hdecCallK hQT (FunSpec.and (funSpec_allocRel (σ := σ)) (gwk_tab (f := nm "alloc") (by decide))) ?_
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
  refine hoare_pre (hk q) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_, ?_⟩, lke_set (lke_restore hlk) rn _⟩
  · intro g hg
    rcases hg with hg | rfl
    · have := (holdsAll_loc hL' s.locals st.clock) g hg
      cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
    · exact fbuf_of_alloc hfb (ebRun_mono hr) hq8 hlive hunal
  · exact ⟨hC', hBlw.mono hhp, hq8, hlive.1, by have := hlive.2; omega⟩

end bloom

end InitECandidate.Solver.MemSafe.Eb
