import InitECandidate.Solver.MemSafe.Ptx.PtT30

/-!
# F3h: `ptS170`: `incorporate_tx_into_block(); var mark = out[80]; if mark != 0 { release }; return 0`
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

variable {σ : Type}

theorem tailPost_rel {K : TlCtx σ} {u t : State σ} {Γ' : Gam} {mk mm : BitVec 64} (hmid : TailMid K u Γ')
    (hrel : RelPost Γ' u t mk mm) : TailPost K t := by
  obtain ⟨hG, hmem, ⟨p0, p1, hp0, hp1, hhp⟩, hgl⟩ := hrel
  refine ⟨Γ', hG, hmid.owner, keepH_hp hmid.keep hp0 hp1 hhp, fun o ho hot k hk hpr hnw => ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hmem]; exact hmid.blk o ho hot k hk hpr hnw
  · obtain ⟨e, he, hs⟩ := hmid.hev
    refine ⟨e, ?_, hs⟩
    unfold gword at he ⊢
    rw [hgl nmEv (by decide) (by decide)]; exact he
  · obtain ⟨e, he, hs⟩ := hmid.hcc
    refine ⟨e, ?_, hs⟩
    unfold gword at he ⊢
    rw [hgl nmCC (by decide) (by decide)]; exact he
  · rw [hmem]; exact hmid.tx
  · rw [hmem]; exact hmid.rc
  · refine jrNZ_of_gword (fun g hg => ?_) hmid.jr
    have hg' : g ≠ gScratch ∧ g ≠ gFrame := by
      rcases Frames.jrGs_cases hg with rfl | rfl <;> exact ⟨by decide, by decide⟩
    unfold gword
    rw [hgl g hg'.1 hg'.2]
  · intro o ho hot k hk hpr
    rw [hmem]; exact hmid.plk o ho hot k hk hpr

section end_
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

theorem locIns_tail (K : TlCtx σ) :
    LocIns (fun (r : Option (PanSemResultExact 64)) (t : State σ) =>
      r = some (.returned (.val (.word 0))) ∧ TailPost K t) :=
  fun r t l c h => ⟨h.1, tailPost_loc h.2 l c⟩

/-- **The end of the tail.** -/
theorem tl_end (hP : TlPre K) (hgs : Bal.HGS σ)
    (hBC : ∀ a, Z a → BlkC K a)
    (hblk : ∀ a, BlkC K a → ¬ K.Wt a → Z a ∧ ref a = K.ref0 a)
    (hrc : ∀ (Γ : Gam) (p : Ptrs) (u : State σ), TlS K.A ref Z O u Γ p →
      Z (K.E.rcs + K.E.idx * 16) ∧ Z (K.E.rcs + K.E.idx * 16 + 8) ∧
        Hooks.VInR tVAL Γ (ref (K.E.rcs + K.E.idx * 16)) (ref (K.E.rcs + K.E.idx * 16 + 8)))
    (h80 : Z (K.out + BitVec.ofNat 64 80) ∧ ref (K.out + BitVec.ofNat 64 80) = K.ref0 (K.out + BitVec.ofNat 64 80))
    (h88 : Z (K.out + BitVec.ofNat 64 88) ∧ ref (K.out + BitVec.ofNat 64 88) = K.ref0 (K.out + BitVec.ofNat 64 88))
    (hmv : K.ref0 (K.out + BitVec.ofNat 64 80) ≠ 0 →
      MarkVals (K.ref0 (K.out + BitVec.ofNat 64 80)) (K.ref0 (K.out + BitVec.ofNat 64 88)))
    (hout : En (nm "out") = some (.val (.word K.out))) (hmkv : En (nm "tx_frame_mark") = none) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) En) ptS170
      (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hB := bloc_tl K.A ref Z (O := O)
  have hQT := locIns_tail K
  unfold ptS170
  refine hseqN (hn_incorp hP hgs (fun a ha => blkC_inl (hBC a ha))) ?_
  unfold ptS172
  set mk := K.ref0 (K.out + BitVec.ofNat 64 80) with hmkdef
  set mm := K.ref0 (K.out + BitVec.ofNat 64 88) with hmmdef
  refine hdecT_g hB (locIns_resIns hQT _) (w := mk) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hout)) (evI_cw s 80))
    have h2 := h1 v hv
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (K.out + BitVec.ofNat 64 80))) = _
    rw [hr.keep _ h80.1, h80.2]
  unfold ptS173
  have hoL : ∀ x : ValueHOL 64, (En.set (nm "tx_frame_mark") x) (nm "out") = some (.val (.word K.out)) := fun x => by
    rw [env_set_ne _ _ (by decide)]; exact hout
  refine hseqN (P1 := fun t => TailPost K t) ?_ ?_
  · unfold ptS174
    refine hn_ite ?_ ?_
    · -- release
      refine hoare_of_eq' fun s hs ⟨hpa, hc⟩ => ?_
      obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
      have hmid := tailMid_of_tl hP hr hblk (hrc Γ p s hr)
      have hmk0 : s.locals.lookup (nm "tx_frame_mark") = some (.val (.word mk)) := hlk _ _ (env_set_self _ _ _)
      have hout0 : s.locals.lookup (nm "out") = some (.val (.word K.out)) := hlk _ _ (hoL _)
      have hm80 : rd s.memory (K.out + BitVec.ofNat 64 80) = mk := by rw [hr.keep _ h80.1, h80.2]
      have hm88 : rd s.memory (K.out + BitVec.ofNat 64 88) = mm := by rw [hr.keep _ h88.1, h88.2]
      have hmkne : mk ≠ 0 := cond_ne_gen (evI_lv hmk0) (evI_cw s 0) hc
      have hrel := hoare_rel (Γ := keepG Γ) (u0 := s) hmid.hG hmid.heap hout0 hmk0 hm80 hm88 (hmv hmkne)
      exact hoare_post hrel fun r t _ _ h => ⟨h.1, tailPost_rel hmid h.2⟩
    · refine hoare_skip fun s hs ⟨hpa, hc⟩ => ⟨rfl, ?_⟩
      obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
      exact tailPost_of_mid (tailMid_of_tl hP hr hblk (hrc Γ p s hr))
  · refine hoare_return fun s hs hp v hv => ?_
    have hv0 : v = .val (.word 0) := (evI_cw s 0) v hv
    subst hv0
    exact ⟨rfl, tailPost_loc hp s.locals s.clock⟩

end end_

end InitECandidate.Solver.MemSafe.Ptx
