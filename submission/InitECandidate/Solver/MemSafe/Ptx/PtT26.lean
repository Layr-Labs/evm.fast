import InitECandidate.Solver.MemSafe.Ptx.PtT25
import InitECandidate.Solver.MemSafe.Frames.TxRelease

/-!
# F3g: the final release (`scratch_release(mark); frame_mem_release(out[88])`) and `G_relHeap`
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

theorem hoare_of_eq' {P : State σ → Prop} {b : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ s : State σ, InCtx s guestCtx → P s → Hoare σ guestCtx (fun t => t = s) b Q) :
    Hoare σ guestCtx P b Q := fun s hs hp ht => h s hs hp s hs rfl ht

/-- What the two release calls leave behind. -/
def RelPost (Γ : Gam) (u0 t : State σ) (mk mm : BitVec 64) : Prop :=
  G guestC (HR σ) Γ t ∧ t.memory = u0.memory ∧
    (∃ p0 p1, ptrsOf u0 = some p0 ∧ ptrsOf t = some p1 ∧ p1.hp = p0.hp) ∧
    (∀ g, g ≠ gScratch → g ≠ gFrame → t.globals.lookup g = u0.globals.lookup g)

theorem scratch_rel_fin : ptAllNames.contains (nm "scratch_release") = true := by decide_cbv
theorem frame_rel_fin : ptAllNames.contains (nm "frame_mem_release") = true := by decide_cbv

/-- **The two release calls** from a heap-only `G` state with valid marks in the output record. -/
theorem hoare_rel {Γ : Gam} {u0 : State σ} {outw mk mm : BitVec 64}
    (hG : G guestC (HR σ) Γ u0) (hHeap : ∀ o ∈ Γ, (guestC.ty o.ty).region = .heap)
    (hout : u0.locals.lookup (nm "out") = some (.val (.word outw)))
    (hmkl : u0.locals.lookup (nm "tx_frame_mark") = some (.val (.word mk)))
    (hmk : rd u0.memory (outw + BitVec.ofNat 64 80) = mk) (hmm : rd u0.memory (outw + BitVec.ofNat 64 88) = mm)
    (hM : MarkVals mk mm) :
    Hoare σ guestCtx (fun t => t = u0) ptS175 (fun r t => r = none ∧ RelPost Γ u0 t mk mm) := by
  unfold ptS175
  let P1 : State σ → Prop := fun t => t.memory = u0.memory ∧ t.memaddrs = u0.memaddrs ∧ t.be = u0.be ∧
    t.globals.lookup gScratch = some (.val (.word mk)) ∧
    (∀ g, g ≠ gScratch → t.globals.lookup g = u0.globals.lookup g) ∧ t.locals = u0.locals
  refine hoare_seqP (Rn := P1) ?_ ?_
  · refine hoare_callD ((releaseSpec_scratch_release guestCtx_code).and (Frames.funSpec_dom _)) ?_
    intro s hs hP vs hvs callee v st ⟨hR, hdb⟩ hst
    subst hP
    have hv : vs = [.val (.word mk)] := by
      have : evs s [lv (nm "tx_frame_mark")] = some [.val (.word mk)] := evs_cons (ev_lv_eq hmkl) evs_nil
      rw [this] at hvs; exact (Option.some.inj hvs).symm
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) mk hv
    exact ⟨rfl, hm, hdb.1, hdb.2, hg1, hg2, rfl⟩
  · refine hoare_callD ((releaseSpec_frame_mem_release guestCtx_code).and (Frames.funSpec_dom _)) ?_
    intro s hs hP vs hvs callee v st ⟨hR, hdb⟩ hst
    obtain ⟨hmem, hd, hbe, hgs, hgo, hloc⟩ := hP
    obtain ⟨x, rfl, hx⟩ := evs_single hvs
    have hout' : s.locals.lookup (nm "out") = some (.val (.word outw)) := by rw [hloc]; exact hout
    have hx' := (evI_ld (evI_add (evI_lv hout') (evI_cw s 88))) x hx
    have hxmm : x = .val (.word mm) := by
      rw [hx']
      show ValueHOL.val (HolWordLab.word (rd s.memory (outw + BitVec.ofNat 64 88))) = _
      rw [hmem, hmm]
    subst hxmm
    obtain ⟨hm2, hg1, hg2⟩ := hR (by simp [Good]) mm rfl
    have hmem2 : st.memory = u0.memory := hm2.trans hmem
    have hgs2 : ∀ g, g ≠ gFrame → st.globals.lookup g = (callEntryStateHOLFinite s callee).globals.lookup g := hg2
    have hgScr : st.globals.lookup gScratch = some (.val (.word mk)) := by
      rw [hg2 gScratch (by decide)]; exact hgs
    have hgo' : ∀ g, g ≠ gScratch → g ≠ gFrame → st.globals.lookup g = u0.globals.lookup g := by
      intro g h1 h2
      rw [hg2 g h2]
      exact hgo g h1
    have hG' : G guestC (HR σ) Γ { st with locals := s.locals } :=
      G_relHeap (σ := σ) Hooks.guestHooksR_lawful (Hooks.drvCfg_guestHooksR (σ := σ)).allocG hG hHeap hM
        (hmem2) (by exact hdb.1.trans (hd)) (by exact hdb.2.trans hbe) hgScr hg1 hgo'
    refine ⟨rfl, hG', hmem2, ?_, hgo'⟩
    obtain ⟨p0, hp0, -⟩ := id hG
    obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_parts hp0
    refine ⟨_, ⟨a.toNat, mm.toNat, mk.toNat⟩, hp0, ?_, rfl⟩
    refine ptrsOf_of (a := a) (b := mm) (c := mk) ?_ ?_ ?_
    · unfold gword at ha ⊢
      show (match st.globals.lookup gHeap with | some (ValueHOL.val (HolWordLab.word w)) => some w | _ => none) = some a
      rw [hgo' gHeap (by decide) (by decide)]
      exact ha
    · unfold gword; show (match st.globals.lookup gFrame with | some (ValueHOL.val (HolWordLab.word w)) => some w | _ => none) = some mm
      rw [hg1]
    · unfold gword; show (match st.globals.lookup gScratch with | some (ValueHOL.val (HolWordLab.word w)) => some w | _ => none) = some mk
      rw [hgScr]

end InitECandidate.Solver.MemSafe.Ptx
