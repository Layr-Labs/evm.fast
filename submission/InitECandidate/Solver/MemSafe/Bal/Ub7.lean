import InitECandidate.Solver.MemSafe.Bal.Ub6

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

def Eb (IDX : BitVec 64) : Env := E0.set (nm "idx") (.val (.word IDX))

section ub7
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `var n = e; body` with the value fact `G` that mentions the typing. -/
theorem hdecEF (hH : HooksLawful guestC (guestHooksR (σ := σ))) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E Eo : Env} {F Fo : Gam → Prop} (G : ValueHOL 64 → Gam → Prop)
    (hEo : Eo n = none)
    (hfact : ∀ Γ s v, PI ubc Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v Γ)
    (hbody : ∀ v, HoareG σ guestCtx (PE ubc Γ0 s0 p0 (E.set n v) (fun Γ => F Γ ∧ G v Γ)) body
      (RR ubc Γ0 s0 p0 (LE Eo Fo))) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 E F) (.dec n sh e body) (RR ubc Γ0 s0 p0 (LE Eo Fo)) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite n v s) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => rr_res (L := LE Eo Fo) (fun Γ t o h => le_res hEo h o) hH _ hq)
  refine hoareG_pre (hbody v) (fun t _ ht => ?_)
  subst ht
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, le_set ⟨hLL, hFF⟩ n v,
    hFF, hfact Γ s v ⟨hIV, hLL, hFF⟩ hv⟩

/-- A pointer slot of the transaction state. -/
theorem ts_slot (Ent : UbEnt Γ0 s0 p0) {Γ : Gam} {t : State σ} (hIV : IV ubc Γ0 s0 p0 Γ t) {k j th : Nat}
    (hj : j = 8 * k) (hsz : 8 * k + 8 ≤ 72) (hs : (guestC.ty tTS).slot k = .ptr th) {v : ValueHOL 64}
    (hv : ev t (ld1 (add2 gTs j)) = some v) :
    ∃ A : BitVec 64, v = .val (.word A) ∧ ∃ S ∈ Γ, S.base = A ∧ S.ty = th := by
  obtain ⟨w, hw, T, hT, hTb, hTt⟩ := (ub_facts Ent hIV).ts
  have hl := AllocImpl.lookup_of_gword hw
  have e1 : v = .val (.word (rd t.memory (w + BitVec.ofNat 64 j))) :=
    lp_ev_ld (ev_add2 (ev_gv hl) (ev_cw _ j)) hv
  have hG := Struct.trk_G hIV.1
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  have hmin := (hL.1 T hT).2.2.2.1
  rw [hTt] at hmin
  have hms : (guestC.ty tTS).minSz = 72 := by decide
  obtain ⟨O, hO, hOb, hOt⟩ := slot_ptr hG hT (k := k) (by omega) (by rw [hTt]; exact hs)
  refine ⟨_, e1, O, hO, ?_, hOt⟩
  rw [hOb, cell_eq_off T hj, hTb]

theorem ev_gscalar {Γ : Gam} {t : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ t) {g : String}
    (hk : guestC.GT.lookup (nm g) = some .scalar) {v : ValueHOL 64} (hv : ev t (gvE g) = some v) :
    ∃ w : BitVec 64, v = .val (.word w) := by
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hG
  obtain ⟨w, hw, -⟩ := hGl (nm g) .scalar hk
  have hl := AllocImpl.lookup_of_gword hw
  have h1 : ev t (gvE g) = some (.val (.word w)) := ev_gv hl
  rw [h1] at hv
  exact ⟨w, (Option.some.inj hv).symm⟩

theorem ub_loop1 (Ent : UbEnt Γ0 s0 p0) (IDX AW CW : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 (EL IDX AW CW (BitVec.ofNat 64 0)) (FL AW)) ubLoop1
      (RR ubc Γ0 s0 p0 (fun Γ t => ∃ IW, LE (EL IDX AW CW IW) (FL AW) Γ t)) := by
  unfold ubLoop1
  refine hoareG_pre (gwhile (cs := ubc) (Γ0 := Γ0) (s0 := s0) (p0 := p0)
    (L := fun Γ t => ∃ IW, LE (EL IDX AW CW IW) (FL AW) Γ t) (by decide) (fun Γ s h => h) ?_) ?_
  · intro s hs ⟨⟨Γ, hIV, IW, hl⟩, hc⟩ hg
    have := ub_l1_body Ent IDX AW CW IW s hs ⟨Γ, hIV, hl⟩ hg
    exact rr_mono (fun Γ t h => ⟨_, h⟩) this
  · intro s _ ⟨Γ, hIV, hl⟩
    exact ⟨Γ, hIV, _, hl⟩

theorem ub_rest_body (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {IDX : BitVec 64} (O : BitVec 64) :
    HoareG σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O))
      (.seq (.assign .local (nm "cap") (ld1 (add2 (lvv "outer") 24)))
        (.seq (.assign .local (nm "i") (cw 0)) (.seq ubLoop2 (.return (cw 0)))))
      (RR ubc Γ0 s0 p0 (LE E0 (fun _ => True))) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine hseqR2 (L := LE ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O)) (hassignU hH ?_) ?_
  · simp (config := {decide := true}) [Eb, E0, Env.set]
  refine hseqR2 (L := fun Γ t => ∃ v, v = .val (.word (BitVec.ofNat 64 0)) ∧
      LE (((Eb IDX).set (nm "outer") (.val (.word O))).set (nm "i") v) (FL2 O) Γ t)
    (hassignT hH (fun v => v = .val (.word (BitVec.ofNat 64 0))) ?_) (hexG fun v hv => ?_)
  · intro Γ s' v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  subst hv
  refine hseqR2 (L := fun Γ t => ∃ IW, LE (EL2 (Eb IDX) O IW) (FL2 O) Γ t) (ub_loop2 Ent hgs (IDX := IDX) ?_ ?_ O) ?_
  · intro x hx
    simp only [ubNames4, ubNames3, List.mem_cons, List.not_mem_nil, or_false] at hx
    rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp (config := {decide := true}) [Eb, E0, Env.set]
  · simp (config := {decide := true}) [Eb, E0, Env.set]
  · refine hoareG_return fun t _ ⟨Γ, hIV, IW, hl⟩ v hv => ?_
    exact Or.inr ⟨by simp, gq4_of_iv _ ⟨Struct.trk_congr (Rec.foldOK_guestR (σ := σ)).hH hIV.1 rfl rfl rfl rfl, hIV.2⟩⟩

end ub7

end InitECandidate.Solver.MemSafe.Bal
