import InitECandidate.Solver.MemSafe.Trie.CsrLoopB

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: calls without buffers, as a rule

* `Pers`: an invariant that survives every call without buffers whose capabilities avoid `tWSR`.
* `gp_decAny`: `var x = f(args); k` for such a callee (`any` parameters, non-growing, no capabilities).
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def Pers (a : Act σ) (E : Gam → Ptrs → Mem → Prop) : Prop :=
  ∀ (sg' : Sig) (cs : List Cap) (vs : List (ValueHOL 64)) (Γ Γ' : Gam) (q q' : Ptrs) (s st : State σ),
    sg'.params.all noBufP = true → CapsAvoid cs Types.tWSR → Mod a sg' cs vs Γ q s st → Ext Γ Γ' →
    NewFresh Γ Γ' q q' → q.Mono q' → Heap a Γ q s → Heap a Γ' q' st → E Γ q s.memory → E Γ' q' st.memory

theorem pers_ib {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ') {C NR SW AW ND : BitVec 64} :
    Pers a (IB a K C NR SW AW ND) :=
  fun sg' cs vs Γ Γ' q q' s st hnb hcs hmd hext hnf hmo hh hh' hE =>
    ib_nb haC hCb hK hnb hcs hmd hext hh hh' hE

theorem pers_im {a : Act σ} (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC) {K : Gam → Prop}
    (hK : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → K Γ → K Γ') {C NR SW AW ND M : BitVec 64} :
    Pers a (IM a K C NR SW AW ND M) :=
  fun sg' cs vs Γ Γ' q q' s st hnb hcs hmd hext hnf hmo hh hh' hE =>
    im_nb haC hCb hK hnb hcs hmd hext hnf hmo hh hh' hE

theorem pers_and {a : Act σ} {E : Gam → Ptrs → Mem → Prop} {P : Gam → Prop} (hE : Pers a E)
    (hP : ∀ Γ Γ' : Gam, Ext Γ Γ' → P Γ → P Γ') :
    Pers a (fun Γ q mm => E Γ q mm ∧ P Γ) :=
  fun sg' cs vs Γ Γ' q q' s st hnb hcs hmd hext hnf hmo hh hh' h =>
    ⟨hE sg' cs vs Γ Γ' q q' s st hnb hcs hmd hext hnf hmo hh hh' h.1, hP Γ Γ' hext h.2⟩

set_option maxHeartbeats 0 in
theorem gp_decAny {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) {E : Gam → Ptrs → Mem → Prop} (hP : Pers a E)
    {f : MlS} {sg' : Sig}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' (fun _ _ _ => True) (fun _ s Γ y => CapPW [] s Γ y)
      (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgrows : sg'.grows = false) (hgw : sg'.gw = [])
    {args : List (ExpHOL 64)} (hlen : sg'.params.length = args.length)
    {x : MlS} {sh : ShapeHOL} {kv : List (MlS × ValueHOL 64)} (hx : ∀ p ∈ kv, p.1 ≠ x)
    (Pv : ValueHOL 64 → Prop) (hsh : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → Pv v)
    {k : ProgHOL 64} {L2 L3 : LocalsH → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hk : ∀ v, Pv v → HoareG σ guestCtx (GI a (LV ((x, v) :: kv)) E) k (GP a L2 E Rv))
    (hres : ∀ m0 m : LocalsH, LV kv m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ guestCtx (GI a (LV kv) E) (.decCall x sh f args k) (GP a L3 E Rv) := by
  refine gp_decCallX ha (cs := []) (capSub_nil _) hf (funSpec_true _) (by simp [hgw])
    (fun h => by rw [hgrows] at h; cases h)
    (L1 := fun v m => Pv v ∧ LV ((x, v) :: kv) m) (E1 := fun _ => E) (L2 := L2) (E2 := E) ?_ ?_ ?_ ?_ hres
  · intro s Γ q hs hL hh hE vs hvs
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    exact ⟨h.1, fun y hy => (h.2 y hy).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp hgrows), fun v hv hsh' => ?_⟩
    refine hP sg' [] vs Γ Γ' q q' s st ?_ (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE
    exact List.all_eq_true.mpr fun pt hpt => by rw [hps pt hpt]; simp [noBufP]
  · intro s st v hL hsh'
    exact ⟨hsh v hsh', lv_cons (lv_set hL hx _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hv : Pv v
    swap
    · exact hoareG_false fun s _ h => hv h.1.1
    exact hoareG_pre (hk v hv) (fun s _ ⟨⟨_, hL⟩, rest⟩ => ⟨hL, rest⟩)

set_option maxHeartbeats 0 in
/-- `x = f(args);` for a local `x` and a buffer-free callee. -/
theorem gp_callAssignAny {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) {E : Gam → Ptrs → Mem → Prop} (hP : Pers a E)
    {f : MlS} {sg' : Sig}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' (fun _ _ _ => True) (fun _ s Γ y => CapPW [] s Γ y)
      (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgrows : sg'.grows = false) (hgw : sg'.gw = [])
    {args : List (ExpHOL 64)} (hlen : sg'.params.length = args.length)
    {x : MlS} {L L' : LocalsH → Prop}
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' (setKvarHOLFinite VarKind.local x v { st with locals := s.locals }).locals)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a L E) (.call (some (some (VarKind.local, x), none)) f args) (GP a L' E Rv) := by
  have hnb : sg'.params.all noBufP = true :=
    List.all_eq_true.mpr fun pt hpt => by rw [hps pt hpt]; simp [noBufP]
  refine hoareG_callA (hf.and (funSpec_true _)) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ _
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX (r := .returned v)
      (Pre := fun _ _ _ => True) (Q := fun _ _ _ _ _ _ => True) ha hh (capSub_nil _) hR
      (by simp [Good]) (by simp [Abortive]) h.1 (fun y hy => (h.2 y hy).elim) trivial
      (by simp [hgw]) (fun hg => by rw [hgrows] at hg; cases hg)
    refine ⟨fun _ => ⟨hL' s st v hL, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc (scrOld_of_nf0 (layout_of_heap haC hh') (hnfp hgrows)),
      hP sg' [] vs Γ Γ' q q' s st hnb (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX
      (Pre := fun _ _ _ => True) (Q := fun _ _ _ _ _ _ => True) ha hh (capSub_nil _) hR (abn_good' habn) hna
      h.1 (fun y hy => (h.2 y hy).elim) trivial (by simp [hgw])
      (fun hg => by rw [hgrows] at hg; cases hg)
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc (scrOld_of_nf0 (layout_of_heap haC hh') (hnfp hgrows)),
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.gp_decAny
#print axioms InitECandidate.Solver.MemSafe.Trie.gp_callAssignAny
