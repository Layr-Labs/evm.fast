import InitECandidate.Solver.MemSafe.Ins.InsLoop

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the function summary, from the loop body

`sumSpecA_insert_node_of_body`: given the body triple `hBody` (the open part, see `README.md`), the
summary of `_mpt_insert_node`.
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

def insSig : Sig := ⟨[.fits Types.nodeU, .any, .any, .any, .any, .any], [.fits Types.nodeU], [], true⟩

/-- The precondition: the level is at most the key length, and the key is a `` slice. -/
def InsPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ N K KL LV VP VL : BitVec 64,
    vs = [.val (.word N), .val (.word K), .val (.word KL), .val (.word LV), .val (.word VP),
      .val (.word VL)] ∧ LV.toNat ≤ KL.toNat ∧ NIn Γ K KL ∧ Hooks.VInR Types.tVAL Γ VP VL

/-- The loop-body obligation (open): one iteration keeps the loop invariant. -/
def InsBody : Prop :=
  ∀ {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) insSig insCaps vs s0 Γ0 p0) guestCtx)
    (K KL VP VL : BitVec 64) (_ : Hooks.VInR Types.tVAL Γ0 VP VL)
    (Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop),
    HoareG σ guestCtx (fun s => JI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) insSig insCaps vs s0 Γ0 p0)
        K KL VP VL s ∧ CondTrue s goCondI) iBody
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) insSig insCaps vs s0 Γ0 p0)
        (JI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) insSig insCaps vs s0 Γ0 p0) K KL VP VL) Rv)

theorem sumSpecA_insert_node_of_body (hBody : InsBody (σ := σ) ) :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_mpt_insert_node") insSig
      (fun vs s Γ => InsPre vs s Γ) (fun _ s Γ a => CapPW insCaps s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧ Rt Γ' w) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gpC (Rx := fun vs _ Γ' _ _ v => ∃ w, v = .val (.word w) ∧ Rt Γ' w)
    hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_ins _) (by
      intro c hc
      simp only [insCaps, leafCaps, brCaps, List.cons_append, List.nil_append, List.mem_cons,
        List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl <;> rfl) ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_ins hl
  obtain ⟨N, K, KL, LV, VP, VL, rfl, hlv, hk, hvv⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) insSig insCaps _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hfitN : Fits a.Γ0 Types.nodeU N := by
    obtain ⟨w, hw, hf⟩ := ha.hargs0.2 0 (.fits Types.nodeU) (.val (.word N)) rfl rfl
    simp only [wordOf, Option.some.injEq] at hw
    subst hw
    exact hf
  let kv0 : List (MlS × BitVec 64) := [(nm "node", N), (nm "key", K), (nm "klen", KL),
    (nm "level", LV), (nm "vptr", VP), (nm "vlen", VL)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
    · exact (hbind 4 (by decide) (by simp)).1
    · exact (hbind 5 (by decide) (by simp)).1
  let Rv0 : Gam → Ptrs → Mem → ValueHOL 64 → Prop := fun Γ' p' _ v =>
    RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ w, v = .val (.word w) ∧ Rt Γ' w
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => Fits Γ Types.nodeU N ∧ NIn Γ K KL))
    (Q := GPJ a (fun _ => True) Rv0) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hfitN, hk⟩
  · intro r t _ _ h r' hr hna
    exact (h.2 r' hr).2 hna
  unfold insFull
  have hfr : ∀ x : MlS, (x = nm "result" ∨ x = nm "slot" ∨ x = nm "go") → ∀ p ∈ kv0, p.1 ≠ x := by
    intro x hx p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hx with rfl | rfl | rfl <;>
      rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)
  -- the three declarations
  refine gp_decJ ha.hH (L1 := LKV ((nm "result", 0) :: kv0)) (Inv := fun _ => True)
    (fun s hs hL v hv => ?_) ?_ (fun _ _ h => h)
  · have hv' : v = .val (.word 0) := by
      have := ev_cw (σ := σ) s 0
      rw [this] at hv; exact (Option.some.inj hv).symm
    subst hv'
    exact lkv_new hL (hfr _ (Or.inl rfl)) _
  refine gp_decJ ha.hH (L1 := LKV ((nm "slot", 0) :: (nm "result", 0) :: kv0)) (Inv := fun _ => True)
    (fun s hs hL v hv => ?_) ?_ (fun _ _ h => h)
  · have hv' : v = .val (.word 0) := by
      have := ev_cw (σ := σ) s 0
      rw [this] at hv; exact (Option.some.inj hv).symm
    subst hv'
    refine lkv_new hL ?_ _
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | hp
    · decide
    · exact hfr _ (Or.inr (Or.inl rfl)) p hp
  refine gp_decJ ha.hH (L1 := LKV ((nm "go", 1) :: (nm "slot", 0) :: (nm "result", 0) :: kv0))
    (Inv := fun _ => True) (fun s hs hL v hv => ?_) ?_ (fun _ _ h => h)
  · have hv' : v = .val (.word 1) := by
      have := ev_cw (σ := σ) s 1
      rw [this] at hv; exact (Option.some.inj hv).symm
    subst hv'
    refine lkv_new hL ?_ _
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | rfl | hp
    · decide
    · decide
    · exact hfr _ (Or.inr (Or.inr rfl)) p hp
  -- the loop and the return
  refine gpj_seq (Inv1 := JIg a K KL VP VL 0) ?_ ?_
  · refine hoareG_pre (insLoop_G ha (hBody ha K KL VP VL hvv Rv0)) ?_
    rintro s _ ⟨hL, Γ, q, he, hh', hsc, hE⟩
    refine ⟨1, N, LV, 0, 0, ?_, Γ, q, he, hh', hsc, hE.1, Or.inl rfl, Or.inl rfl, hlv, hE.2⟩
    intro p hp
    simp only [kvJ, List.mem_cons, List.not_mem_nil, or_false] at hp
    apply hL
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [kv0]
  · refine hoareG_ex (fun Nd => hoareG_ex fun Lv => hoareG_ex fun Res => hoareG_ex fun Sl => ?_)
    refine gpj_of_gp (L := LKV (kvJ K KL VP VL Nd Lv Res Sl 0))
      (E := fun Γ _ _ => Inv0 K KL Nd Lv Res Sl Γ) (Inv := fun _ => True) ?_ (fun _ _ => trivial)
    refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
    rw [ev_lw (hL (nm "result", Res) (by simp [kvJ]))] at hv
    cases hv
    have hR := hE.2.2.1
    have hfit : Fits Γ Types.nodeU Res := by
      rcases hR with h | ⟨o, ho, hb, ht⟩
      · subst h; left; simp [nullMax]
      · exact Or.inr ⟨o, ho, hb, ht⟩
    exact ⟨retOK_fits1 hfit, Res, rfl, hR⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_insert_node_of_body
