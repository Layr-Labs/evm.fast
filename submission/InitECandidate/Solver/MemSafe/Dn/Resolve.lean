import InitECandidate.Solver.MemSafe.Dn.Kit
import InitECandidate.Solver.MemSafe.Dn.Ctor
import InitECandidate.Solver.Spec.Mpt.Decode.ResolveCode
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `_resolve_step` at the final hook family

`sumSpecA_resolve_step_R`: the summary of `_resolve_step(db, p, n)` (any arguments, no
capabilities), with the value fact `ResRx`: a result `<0, r1, _, _>` has `r1` null or a node of
`Γ'` (`node_new_hashed`'s result). The location facts of the other results come from the cost
lane's functional spec `Spec.Mpt.Dec.freshFoot_resolve_step`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)
open InitECandidate.Solver.Spec.Mpt.Dec (rsBody rsCall rsStr rsNode code_resolve_step params_wd sh4 sh3)

variable {σ : Type}

/-- The signature: three `any` arguments. -/
def rsSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- A node result is null or a node of `Γ'`. -/
def ResRx (_ : List (ValueHOL 64)) (Γ' : Gam) (v : ValueHOL 64) : Prop :=
  ∀ r0 r1 r2 r3 : BitVec 64,
    v = .rStruct [.val (.word r0), .val (.word r1), .val (.word r2), .val (.word r3)] → r0 = 0 →
      Fits Γ' Types.nodeU r1

theorem retOK_nil {Γ : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} {v : ValueHOL 64} :
    RetOK Γ p p' vs [] v := fun i r w h => by simp at h

theorem ev_rstruct_hd {s : State σ} {e : ExpHOL 64} {es : List (ExpHOL 64)} {v v0 : ValueHOL 64}
    (h : ev s (.rstruct (e :: es)) = some v) (h0 : ev s e = some v0) :
    ∃ vs', v = .rStruct (v0 :: vs') := by
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv h
  obtain ⟨v1, vs', rfl, h1, -⟩ := evs_cons_inv hvs
  rw [h0] at h1; cases h1; exact ⟨vs', rfl⟩

theorem ev_rstruct_hd2 {s : State σ} {e e' : ExpHOL 64} {es : List (ExpHOL 64)}
    {v v0 v1 : ValueHOL 64} (h : ev s (.rstruct (e :: e' :: es)) = some v) (h0 : ev s e = some v0)
    (h1 : ev s e' = some v1) : ∃ vs', v = .rStruct (v0 :: v1 :: vs') := by
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv h
  obtain ⟨w0, vs1, rfl, hw0, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨w1, vs2, rfl, hw1, -⟩ := evs_cons_inv hvs1
  rw [h0] at hw0; rw [h1] at hw1; cases hw0; cases hw1; exact ⟨vs2, rfl⟩

/-- A result starting with `1` satisfies `ResRx` vacuously. -/
theorem resRx_one {vs : List (ValueHOL 64)} {Γ : Gam} {vs' : List (ValueHOL 64)} :
    ResRx vs Γ (.rStruct (.val (.word (BitVec.ofNat 64 1)) :: vs')) := by
  intro r0 r1 r2 r3 hv h0
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at hv
  rw [← hv.1] at h0
  exact absurd h0 (by decide)

theorem mptFail_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "mpt_fail") ⟨[.any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem rlpItem_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_item") ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem nodedbLookup_R {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "nodedb_lookup")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem nodeNewHashed_spec_R :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_new_hashed") Node.nhSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  Node.sumSpecA_node_new_hashed Rec.foldOK_guestR Hooks.guestHooksR_mono hashedHook_guestR

/-- **`_resolve_step`'s summary** at `guestHooksR`. -/
theorem sumSpecA_resolve_step_R :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_resolve_step") rsSig
      (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → ResRx vs Γ' v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine Rec.sumSpecA_of_heapQG hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, hB, hC'⟩ :=
    Spec.lookupCode_three code_resolve_step (by decide) (by decide) (by decide) hl
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) rsSig [] [A, B, C] s0 Γ0 p0 with hadef
  refine hoareG_conseq (P := DI a 0 0 (fun _ => True) (fun _ _ _ _ => True))
    (Q := NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ResRx a.vs Γ' v)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨trivial, Γ0, p0, ext_refl _, hh, blkF00, nob00, trivial⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh', hv⟩ := h.2 r' hr hna
    exact ⟨Γ', p', he, hh', fun v hv' => hv v hv'⟩
  have hlen2 : ∀ (s : State σ), InCtx s guestCtx → (fun _ => True) s.locals →
      ∀ (es : List (ExpHOL 64)) (ws : List (ValueHOL 64)), evs s es = some ws → es.length = ws.length :=
    fun s _ _ es ws h => (evs_len2 h).symm
  unfold rsBody
  refine hoareG_decDI ha.hH (L' := fun _ => True) (fun _ _ _ _ _ => trivial) ?_
  refine hoareG_decDI ha.hH (L' := fun _ => True) (fun _ _ _ _ _ => trivial) ?_
  -- the failing-call handlers
  have hfail : ∀ k : Nat, HoareG σ guestCtx (DI a 0 0 (fun _ => True) (fun _ _ _ _ => True))
      (Spec.callD (nm "mpt_fail") [cw k]) (DQ a 0 0 (fun _ => True) (fun _ _ _ _ => True)) :=
    fun k => hoareG_callDI ha mptFail_R (funSpec_true _) (by simp) (by simp) (by simp)
      (fun s _ _ ws h => (hlen2 s ‹_› trivial _ ws h)) (by intros; trivial)
  refine hoareG_seqDI (Ar := 0) (n := 0) (L := fun _ => True) (E := fun _ _ _ _ => True) ?_ ?_
  · unfold rsCall
    exact hoareG_tryDI ha rlpItem_R (by simp) (by simp) (by simp) (by decide)
      (fun s hs _ ws h => hlen2 s hs trivial _ ws h) (fun _ _ _ _ _ _ _ h => h)
      (fun _ _ _ => trivial) (fun _ _ _ => trivial) (hfail 3)
  refine hoareG_seqR (L := fun _ => True) (E := fun _ _ _ _ => True) ?_ ?_
  rotate_left
  · refine hoareG_retDI ha.hH (fun s _ _ Γ q _ _ _ v hv => ⟨retOK_nil, ?_⟩)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd hv (ev_cw s 1)
    exact resRx_one
  refine hoareG_ite ?_ (hoareG_skipR fun s h => h.1)
  refine hoareG_pre (P := DI a 0 0 (fun _ => True) (fun _ _ _ _ => True)) ?_ (fun s _ h => h.1)
  refine hoareG_liftNQ ?_
  unfold rsStr
  refine hoareG_seqR (L := fun _ => True) (E := fun _ _ _ _ => True) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skipR fun s h => h.1)
    refine hoareG_liftNQ (hoareG_pre (hoareG_retDI ha.hH (fun s _ _ Γ q _ _ _ v hv => ⟨retOK_nil, ?_⟩))
      (fun s _ h => h.1))
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (ev_cw s 0)
    intro r0 r1 r2 r3 hv' _
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv'
    rw [← hv'.2.1]
    exact Or.inl (by simp [nullMax])
  refine hoareG_seqDI (Ar := 0) (n := 0) (L := fun _ => True) (E := fun _ _ _ _ => True) ?_ ?_
  · refine hoareG_ite (hoareG_pre (hfail 10) fun s _ h => h.1) ?_
    exact hoareG_skip fun s _ h => ⟨fun _ => h.1, fun r' h => absurd h (by simp)⟩
  refine hoareG_decCallDI ha nodedbLookup_R (funSpec_true _) (by simp) (by simp) (by simp)
    (L' := fun _ _ => True) (E' := fun _ _ _ _ _ => True)
    (fun s hs _ ws h => hlen2 s hs trivial _ ws h) (by intros; trivial)
    (fun s st _ _ v Γ Γ' q q' _ _ _ _ he _ _ _ _ co _ => ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF00, trivial⟩) ?_
  intro v
  unfold rsNode
  refine hoareG_seqR (L := fun _ => True) (E := fun _ _ _ _ => True) ?_ ?_
  rotate_left
  · refine hoareG_retDI ha.hH (fun s _ _ Γ q _ _ _ v hv => ⟨retOK_nil, ?_⟩)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd hv (ev_cw s 1)
    exact resRx_one
  refine hoareG_ite ?_ (hoareG_skipR fun s h => h.1)
  refine hoareG_pre (P := DI a 0 0 (fun _ => True) (fun _ _ _ _ => True)) ?_ (fun s _ h => h.1)
  refine hoareG_liftNQ ?_
  refine hoareG_decCallPreQ ha nodeNewHashed_spec_R (by simp [Node.nhSig]) (by simp [Node.nhSig])
    (fun _ => rfl)
    (L' := fun v m => m.lookup (nm "hn") = some v)
    (E' := fun v Γ _ _ _ => ∀ w, v = .val (.word w) → Fits Γ Types.nodeU w)
    (fun s hs _ ws h => by rw [evs_len2 h]; rfl) (fun s st v _ _ => by simp [setVarHOLFinite, FUPDATE])
    (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_ ?_
  · intro s st vs1 callee v1 Γ Γ' q q' _ _ _ he _ _ _ _ co hret _ _
    refine ⟨Γ', q', ext_trans he co.ext, co.heap, blkF00, fun w hw => ?_⟩
    subst hw
    exact hret 0 _ w rfl (by simp [flattenHOL])
  · intro v1
    refine hoareG_retDI ha.hH (fun s _ hL Γ q _ _ hE v hv => ⟨retOK_nil, ?_⟩)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (by rw [ev_lv]; exact hL)
    intro r0 r1 r2 r3 hv' _
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hv'
    exact hE r1 hv'.2.1

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_resolve_step_R
