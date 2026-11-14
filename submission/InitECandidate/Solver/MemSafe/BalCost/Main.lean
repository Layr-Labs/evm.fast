import InitECandidate.Solver.MemSafe.BalCost.Phase2
import InitECandidate.Solver.MemSafe.BalEnc.Bbl10
set_option autoImplicit false
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
set_option maxHeartbeats 0
set_option maxRecDepth 100000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.Aw (Below G_heapOnly AwInv AwE awInv_init)
namespace InitECandidate.Solver.MemSafe.BalCost.Main
variable {σ : Type}
def cSR : Nat := 12554203470773361566123486308481379210557357532653796983052
def cAR : Nat := 6277101735386680783912449071543035764555081211375588999333
 theorem loopSR_cost : Cost σ guestCtx loopSR cSR := InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (by decide_cbv)
 theorem loopAR_cost : Cost σ guestCtx loopAR cAR := InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (by decide_cbv)
theorem tail_cost {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} (hp0 : ptrsOf s0 = some p0)
    (Ent : BbEnt Γ0 s0 p0) (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) {L : Gam → State σ → Prop} :
    Inv.CostP σ guestCtx (fun s => ∃ Γ, PI bbc Γ0 s0 p0 L Γ s)
      phase2 InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight := by
  intro s hs ⟨Γ, hIV, hL⟩ hg
  have hIV' := hIV
  obtain ⟨hT, hb4⟩ := hIV
  have hT' := hT
  obtain ⟨p1, hp1, hm, hxE, hnf, hG1, hmod1, hpg1, hd1, hbe1⟩ := hT
  obtain ⟨q1, hq1, hord1, hL1, -⟩ := id hG1
  rw [hp1] at hq1
  cases hq1
  have hevS : ∃ e, gword s nmEv = some e ∧ e.toNat < nullMax := by
    obtain ⟨e, he, hlt⟩ := hev
    exact ⟨e, by rw [gword_eq_of_lookup (hpg1 nmEv (by decide))]; exact he, hlt⟩
  have hccS : ∃ c, gword s nmCC = some c ∧ c.toNat < nullMax := by
    obtain ⟨c, hc, hlt⟩ := hcc
    exact ⟨c, by rw [gword_eq_of_lookup (hpg1 nmCC (by decide))]; exact hc, hlt⟩
  have hGh : G guestC (guestHooksR (σ := σ)) (heapOf Γ) s :=
    G_heapOnly relCfg_guestR drvCfg_guestHooksR hrg_guestC hG1 hevS hccS
  let a : AwE σ := ⟨guestCS, nwH (guestHooksR (σ := σ)), [], s, heapOf Γ, p1, p1.hp⟩
  have hGa : G guestCS (nwH (guestHooksR (σ := σ))) (heapOf Γ) s := g_iff.2 hGh
  have hK : Aw.AwOK a := ⟨hooksLawful_cs, tagSlots_cs, allocGlobs_cs, hord1.2.2.2.2.2.1, le_rfl, hord1,
    hord1.1⟩
  have hB : Below (heapOf Γ) p1.hp := by
    intro o ho
    obtain ⟨hoΓ, hr⟩ := mem_heapOf.1 ho
    have := (hL1.1 o hoΓ).2.2.2.2
    rw [hr] at this
    unfold Region.Live at this
    unfold Obj.hi
    unfold Obj.lo at this
    omega
  have hBA : Bal.BalNN a.s0 a.Γ0 := by
    obtain ⟨w, hw, o, ho, hob, hot⟩ := (bb_facts Ent hIV').ba
    exact ⟨o, mem_heapOf.2 ⟨ho, by rw [hot]; decide⟩, hot, by rw [hob]; exact hw⟩
  exact InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2_cost hK ⟨rfl, rfl⟩ rfl hBA s hs
    (awInv_init a hGa hp1 hB) hg
#print axioms tail_cost
section rules
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
theorem cost_decF {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} {B : Nat}
    (G : ValueHOL 64 → Gam → Prop)
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v Γ)
    (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    (hbody : ∀ v, Inv.CostP σ guestCtx
      (PE cs Γ0 s0 p0 (E.set n v) (fun Γ => F Γ ∧ G v Γ)) body B) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  apply (hbody v).pre
  intro t ht heq
  subst t
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩,
    le_set ⟨hLL, hFF⟩ n v, hFF, hfact Γ s v ⟨hIV, hLL, hFF⟩ hv⟩

theorem cost_decU {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} {B : Nat} (hn : E n = none)
    (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    (hbody : Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) body B) :
    Inv.CostP σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) B := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  apply hbody.pre
  intro t ht heq
  subst t
  refine ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, fun y w hy => ?_, hFF⟩
  have hne : n ≠ y := fun e => by rw [← e, hn] at hy; cases hy
  exact (lk_set_ne _ _ hne).trans (hLL y w hy)

theorem cost_seqRR {P L : Gam → State σ → Prop} {a b : ProgHOL 64} {Ba Bb : Nat}
    (ha : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a (RR cs Γ0 s0 p0 L))
    (hca : Cost σ guestCtx a Ba)
    (hb : Inv.CostP σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) b Bb) :
    Inv.CostP σ guestCtx (fun s => ∃ Γ, P Γ s) (.seq a b) (Ba + Bb) := by
  refine Inv.costP_seq (Inv.costP_of_cost hca) ?_ hb
  intro s hs hp hg hn
  have h := ha s hs hp (by rw [hn]; exact good_none)
  rcases h with ⟨hr, h⟩ | ⟨hr, h⟩
  · exact h
  · exact absurd hn hr
end rules
#print axioms cost_seqRR
section main
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- From the assignment to `cap`: the second loop and the tail. -/
theorem bb_rest (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR AR : BitVec 64) :
    Inv.CostP σ guestCtx (PE bbc Γ0 s0 p0 (E3 SR AR) (fun Γ => FB1 SR Γ ∧ FB2 AR Γ))
      (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
        (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2)))
      (cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine cost_seqRR (Ba := 0) (Bb := cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight) (L := LE (E3 SR AR) (fun Γ => FB1 SR Γ ∧ FB2 AR Γ)) (hassignU hH (by
    simp (config := {decide := true}) [E3, E0, Env.set, cCap, cSr, cAr])) (cost_assign _ _ _) ?_
  refine cost_seqRR (Ba := 0) (Bb := cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight) (hassignT hH (n := cI) (fun v' => v' = .val (.word (BitVec.ofNat 64 0))) ?_) (cost_assign _ _ _) ?_
  · intro Γ s' v' hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  refine cost_seqRR (L := fun Γ t => ∃ IW, LE (EB2 AR IW) (FB2 AR) Γ t) ?_ loopAR_cost (tail_cost hp0 Ent hev hcc)
  refine hoareG_pre (bb_loop2 Ent AR) (fun s _ ⟨Γ, hIV, v', hv', hl⟩ => ⟨Γ, hIV, ?_⟩)
  subst hv'
  refine le_mono ?_ (fun Γ h => h.2) hl
  intro x w h
  by_cases hi : x = cI
  · subst hi
    simp (config := {decide := true}) [EB2, E0, Env.set, cI, cAr] at h
    simp (config := {decide := true}) [E3, E0, Env.set, cI, cAr, cSr, h]
  · by_cases ha : x = cAr
    · subst ha
      simp (config := {decide := true}) [EB2, E0, Env.set, cI, cAr] at h
      simp (config := {decide := true}) [E3, E0, Env.set, cI, cAr, cSr, h]
    · have hi' : ¬ x = nm "i" := hi
      have ha' : ¬ x = nm "ar" := ha
      simp (config := {decide := true}) [EB2, E0, Env.set, cI, cAr, hi', ha'] at h

set_option maxHeartbeats 8000000 in
theorem bb_after_loop1 (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR : BitVec 64) :
    Inv.CostP σ guestCtx (PE bbc Γ0 s0 p0 (E0.set cSr (.val (.word SR))) (FB1 SR))
      (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
        (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
          (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2))))
      (cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hQ := bblPost_locals (s0 := s0) (Γ0 := Γ0) (p0 := p0) hH
  refine cost_decF (G := fun v Γ => ∃ AR, v = .val (.word AR) ∧ FB2 AR Γ) ?_ hH ?_
  · intro Γ s v hP hv
    obtain ⟨A, rfl, S, hS, hSb, hSt⟩ := bs_slot Ent hP.1 (k := 1) (j := 8) (th := tHTb20) rfl (by decide)
      (by decide) hv
    exact ⟨A, rfl, S, hS, hSb, hSt⟩
  intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
  obtain ⟨AR, rfl, hAR⟩ := hFF.2
  exact bb_rest hp0 Ent hev hcc SR AR s hs ⟨Γ, hIV, hLL, hFF.1, hAR⟩ hg

theorem bb_seq1 (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR : BitVec 64) :
    Inv.CostP σ guestCtx (PE bbc Γ0 s0 p0 (EB1 SR (BitVec.ofNat 64 0)) (FB1 SR))
      (.seq loopSR
        (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
          (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
            (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2)))))
      (cSR + (cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight)) := by
  refine cost_seqRR (L := fun Γ t => ∃ IW, LE (EB1 SR IW) (FB1 SR) Γ t) (bb_loop1 Ent SR) loopSR_cost ?_
  refine Inv.CostP.pre (bb_after_loop1 hp0 Ent hev hcc SR) (fun s _ ⟨Γ, hIV, IW, hl⟩ => ⟨Γ, hIV, ?_⟩)
  refine le_mono ?_ (fun Γ h => h) hl
  intro x w h
  by_cases hs : x = cSr
  · subst hs
    simp (config := {decide := true}) [E0, Env.set, cSr, cI] at h
    simp (config := {decide := true}) [EB1, E0, Env.set, cSr, cI, h]
  · have hs' : ¬ x = nm "sr" := hs
    simp (config := {decide := true}) [E0, Env.set, cSr, cI, hs'] at h

set_option maxHeartbeats 8000000 in
theorem bb_after_sr (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) (SR : BitVec 64) :
    Inv.CostP σ guestCtx (PE bbc Γ0 s0 p0 (E0.set cSr (.val (.word SR))) (FB1 SR))
      (.dec cCap .one (.load .one (.op .add [lv cSr, cw 24]))
        (.dec cI .one (cw 0)
          (.seq loopSR
            (.dec cAr .one (.load .one (.op .add [gE "bs", cw 8]))
              (.seq (.assign .local cCap (.load .one (.op .add [lv cAr, cw 24])))
                (.seq (.assign .local cI (cw 0)) (.seq loopAR phase2)))))))
      (cSR + (cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hQ := bblPost_locals (s0 := s0) (Γ0 := Γ0) (p0 := p0) hH
  refine cost_decU (by simp (config := {decide := true}) [E0, Env.set, cCap, cSr]) hH ?_
  refine cost_decF (G := fun v _ => v = .val (.word (BitVec.ofNat 64 0))) ?_ hH ?_
  · intro Γ s v hP hv
    rw [ev_cw] at hv
    exact (Option.some.inj hv).symm
  intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
  obtain ⟨hF, rfl⟩ := hFF
  exact bb_seq1 hp0 Ent hev hcc SR s hs ⟨Γ, hIV, hLL, hF⟩ hg


theorem bblMain_cost (hp0 : ptrsOf s0 = some p0) (Ent : BbEnt Γ0 s0 p0)
    (hev : ∃ e, gword s0 nmEv = some e ∧ e.toNat < nullMax)
    (hcc : ∃ c, gword s0 nmCC = some c ∧ c.toNat < nullMax) :
    Inv.CostP σ guestCtx (PE bbc Γ0 s0 p0 E0 (fun _ => True)) bblBody (cSR + (cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight)) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hQ := bblPost_locals (s0 := s0) (Γ0 := Γ0) (p0 := p0) hH
  unfold bblBody phase1
  refine cost_decF (G := fun v Γ => ∃ SR, v = .val (.word SR) ∧ FB1 SR Γ) ?_ hH ?_
  · intro Γ s v hP hv
    obtain ⟨A, rfl, S, hS, hSb, hSt⟩ := bs_slot Ent hP.1 (k := 3) (j := 24) (th := tHTb52) rfl (by decide)
      (by decide) hv
    exact ⟨A, rfl, S, hS, hSb, hSt⟩
  intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
  obtain ⟨SR, rfl, hSR⟩ := hFF.2
  exact bb_after_sr hp0 Ent hev hcc SR s hs ⟨Γ, hIV, hLL, hSR⟩ hg

#print axioms bblMain_cost
end main
def mainBound : Nat := cSR +
  (cAR + InitECandidate.Solver.MemSafe.BalCost.Phase2.phase2BoundTight)

def mainPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  vs = [] ∧ ∃ Γ p, G guestC (guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧ BblPre s Γ

theorem callee_cost : Inv.CalleeCostP σ guestCtx (nm "build_block_access_list_rlp")
    mainPre mainBound := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs ⟨hloc, hvs, Γ, p, hG, hp, hpre⟩ hg
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero code_build_block_access_list_rlp hl'
  obtain ⟨hbs, hba, hev, hcc⟩ := hpre
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG
  rw [hp] at hq0
  cases hq0
  have Ent : BbEnt Γ s0 p := by
    obtain ⟨B, hB, hBt, hBg⟩ := hbs
    obtain ⟨T, hT, hTt, hTg⟩ := hba
    exact ⟨hord0, hL0, ⟨B.base, hBg, B, hB, rfl, hBt⟩, ⟨T.base, hTg, T, hT, rfl, hTt⟩⟩
  exact bblMain_cost hp Ent hev hcc s0 hs
    ⟨Γ, ⟨Struct.trk_refl hG hp, fun g _ => rfl⟩,
      fun x w h => absurd h (by simp [E0]), trivial⟩ hg

#print axioms callee_cost
end InitECandidate.Solver.MemSafe.BalCost.Main
