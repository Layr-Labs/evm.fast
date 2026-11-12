import InitECandidate.Solver.MemSafe.Ins.InsLadderFn

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the loop body, and the summary

`insBody_G`: `InsBody ` (one iteration keeps the loop invariant).
`sumSpecA_insert_node_G`: **the summary of `_mpt_insert_node`** at `guestHooksR`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem kvJ_fresh {K KL VP VL Nd Lv Res Sl G : BitVec 64} {x : MlS}
    (hx : x = nm "r" ∨ x = nm "next_node" ∨ x = nm "next_slot" ∨ x = nm "next_level") :
    ∀ p ∈ kvJ K KL VP VL Nd Lv Res Sl G, p.1 ≠ x := by
  intro p hp
  simp only [kvJ, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hx with rfl | rfl | rfl | rfl <;>
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)

theorem ji_res {a : Act σ} (hH : HooksLawful a.C a.H) {K KL VP VL : BitVec 64} {x : MlS}
    (hx : x = nm "r" ∨ x = nm "next_node" ∨ x = nm "next_slot" ∨ x = nm "next_level")
    (o : Option (ValueHOL 64)) {t : State σ} (h : JI a K KL VP VL t) :
    JI a K KL VP VL { t with locals := t.locals.resVarEq (x, o) } := by
  obtain ⟨G, Nd, Lv, Res, Sl, hI⟩ := h
  exact ⟨G, Nd, Lv, Res, Sl, gi_locals hH _ (lkv_res' hI.1 (kvJ_fresh hx) o) hI⟩

theorem insBody_G : InsBody (σ := σ) := by
  intro vs s0 Γ0 p0 ha K KL VP VL hV0 Rv
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) insSig insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hsg : insSig.grows = true := rfl
  refine hoareG_pre (P := fun s => ∃ G Nd Lv Res Sl : BitVec 64, GI a (LKV (kvJ K KL VP VL Nd Lv Res Sl G))
    (fun Γ _ _ => Inv0 K KL Nd Lv Res Sl Γ) s) ?_ (fun s _ ⟨⟨G, Nd, Lv, Res, Sl, h⟩, _⟩ =>
      ⟨G, Nd, Lv, Res, Sl, h⟩)
  refine hoareG_ex fun G => hoareG_ex fun Nd => hoareG_ex fun Lv => hoareG_ex fun Res =>
    hoareG_ex fun Sl => ?_
  by_cases hLv : Lv.toNat ≤ KL.toNat
  swap
  · exact hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => hLv hE.2.2.2.1
  unfold iBody
  have hfr : ∀ x : MlS, (x = nm "r" ∨ x = nm "next_node" ∨ x = nm "next_slot" ∨ x = nm "next_level") →
      ∀ p ∈ kvJ K KL VP VL Nd Lv Res Sl G, p.1 ≠ x := fun x hx => kvJ_fresh hx
  have hz : ∀ s : State σ, ∀ v, ev s (cw 0) = some v → v = .val (.word 0) := fun s v hv => by
    rw [ev_cw] at hv; exact (Option.some.inj hv).symm
  -- the four declarations
  refine gp_decJ ha.hH (L1 := LKV ((nm "r", 0) :: kvJ K KL VP VL Nd Lv Res Sl G)) (Inv := JI a K KL VP VL)
    (fun s hs hL v hv => ?_) ?_ (fun t o h => ji_res ha.hH (Or.inl rfl) o h)
  · obtain rfl := hz s v hv
    exact lkv_new hL (hfr _ (Or.inl rfl)) _
  refine gp_decJ ha.hH (L1 := LKV ((nm "next_node", 0) :: (nm "r", 0) :: kvJ K KL VP VL Nd Lv Res Sl G))
    (Inv := JI a K KL VP VL) (fun s hs hL v hv => ?_) ?_
    (fun t o h => ji_res ha.hH (Or.inr (Or.inl rfl)) o h)
  · obtain rfl := hz s v hv
    refine lkv_new hL ?_ _
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | hp
    · decide
    · exact hfr _ (Or.inr (Or.inl rfl)) p hp
  refine gp_decJ ha.hH (L1 := LKV ((nm "next_slot", 0) :: (nm "next_node", 0) :: (nm "r", 0) ::
      kvJ K KL VP VL Nd Lv Res Sl G)) (Inv := JI a K KL VP VL) (fun s hs hL v hv => ?_) ?_
    (fun t o h => ji_res ha.hH (Or.inr (Or.inr (Or.inl rfl))) o h)
  · obtain rfl := hz s v hv
    refine lkv_new hL ?_ _
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | rfl | hp
    · decide
    · decide
    · exact hfr _ (Or.inr (Or.inr (Or.inl rfl))) p hp
  refine gp_decJ ha.hH (L1 := LKV ((nm "next_level", 0) :: (nm "next_slot", 0) :: (nm "next_node", 0) ::
      (nm "r", 0) :: kvJ K KL VP VL Nd Lv Res Sl G)) (Inv := JI a K KL VP VL)
    (fun s hs hL v hv => ?_) ?_ (fun t o h => ji_res ha.hH (Or.inr (Or.inr (Or.inr rfl))) o h)
  · obtain rfl := hz s v hv
    refine lkv_new hL ?_ _
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | rfl | rfl | hp
    · decide
    · decide
    · decide
    · exact hfr _ (Or.inr (Or.inr (Or.inr rfl))) p hp
  -- `go = 0`
  refine gp_seqJ (L := LKV (kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
    (E := fun Γ _ _ => Inv0 K KL Nd Lv Res Sl Γ) ?_ ?_
  · refine gp_assign ha.hH (fun s hs hL v hv => ?_)
    obtain rfl := hz s v hv
    refine lkv_upd_gen hL (by simp [kvT, kvJ]) ?_
    intro p hp hne
    simp only [kvT, kvJ, List.cons_append, List.nil_append, List.mem_cons, List.not_mem_nil,
      or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      first | exact absurd rfl hne | exact ⟨by dsimp only; decide, by simp [kvJ]⟩
  refine gpj_seq (Inv1 := Mid a K KL VP VL) ?_ ?_
  · refine hoareG_pre (iLadder_G hsg ha (K := K) (KL := KL) (VP := VP) (VL := VL) (Nd := Nd) (Lv := Lv)
    (Res := Res) (Sl := Sl) hLv hV0) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE, Or.inl rfl, fits_of_rt (Or.inl rfl), Or.inl rfl, by simp⟩
  · exact iTail_G ha rfl

/-- **`_mpt_insert_node`'s summary** at `guestHooksR`. -/
theorem sumSpecA_insert_node_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_mpt_insert_node") insSig
      (fun vs s Γ => InsPre vs s Γ) (fun _ s Γ a => CapPW insCaps s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧ Rt Γ' w) :=
  sumSpecA_insert_node_of_body (insBody_G)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.insBody_G
#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_insert_node_G
