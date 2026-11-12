import InitECandidate.Solver.MemSafe.Struct.OpBase

/-!
# Memory opcodes: `op_mstore`, `op_mstore8`, `op_mload`

Each pops its operands, calls `charge_with_memory(3, start, <32|1>)`, writes (or reads) the frame
memory at `MEM + sat_word(start)`, and advances the PC. Under `CWMPre` (GAS_LEFT ≠ WORD_MAX,
contiguity) the written range lies inside the frame-memory object (`CWMQ`), so the write keeps
`G`. Summaries: `sum_op_mstore`, `sum_op_mstore8`, `sum_op_mload`, with post `OpQ T 3`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {T : STy}

/-! ## The code -/

def c4 (n : Nat) : ExpHOL 64 := .rstruct [cw n, cw 0, cw 0, cw 0]

/-- `MEM + s` -/
def memAt (x : String) : ExpHOL 64 := .op .add [evL 24, lv (nm x)]

def opMstoreBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.decCall (nm "value") (shK 4) (nm "stack_pop") []
      (.seq (callD (nm "charge_with_memory") [cw 3, lv (nm "start"), c4 32])
        (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
          (.seq (callD (nm "u256_to_be32") [lv (nm "value"), memAt "s"])
            (.seq (callD (nm "pc_add") [cw 1]) rz)))))

theorem entry_op_mstore : fnEntry Guest.Software.guestFn_op_mstore =
    (nm "op_mstore", [], opMstoreBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_op_mstore : guestCode (nm "op_mstore") = some ([], opMstoreBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 508) (by decide)) ⟨_, rfl⟩
    entry_op_mstore

def opMstore8Body : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.decCall (nm "value") (shK 4) (nm "stack_pop") []
      (.seq (callD (nm "charge_with_memory") [cw 3, lv (nm "start"), c4 1])
        (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
          (.seq (.storeByte (memAt "s") (.op .and [rf 0 "value", cw 255]))
            (.seq (callD (nm "pc_add") [cw 1]) rz)))))

theorem entry_op_mstore8 : fnEntry Guest.Software.guestFn_op_mstore8 =
    (nm "op_mstore8", [], opMstore8Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_op_mstore8 : guestCode (nm "op_mstore8") = some ([], opMstore8Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 509) (by decide)) ⟨_, rfl⟩
    entry_op_mstore8

def opMloadBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.seq (callD (nm "charge_with_memory") [cw 3, lv (nm "start"), c4 32])
      (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
        (.decCall (nm "v") (shK 4) (nm "u256_from_be") [memAt "s", cw 32]
          (.seq (callD (nm "stack_push") [lv (nm "v")])
            (.seq (callD (nm "pc_add") [cw 1]) rz)))))

theorem entry_op_mload : fnEntry Guest.Software.guestFn_op_mload =
    (nm "op_mload", [], opMloadBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_op_mload : guestCode (nm "op_mload") = some ([], opMloadBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 510) (by decide)) ⟨_, rfl⟩
    entry_op_mload

/-! ## Shared pieces of the three proofs -/

def sgOp0 : Sig := ⟨[], [], [], true⟩

theorem opInv_fin (hH : HooksLawful C H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat} {cont : Prop} {t : State σ}
    (hL0 : Layout C p0 Γ0) (he : EvObj T Γ0 s0 e) (hp0 : ptrsOf s0 = some p0) {base : Nat}
    (h : OpInv C H Γ0 s0 p0 PWs e GLb cont t) {r : PanSemResultExact 64}
    (hret : (∃ v, r = .returned v) → base ≤ GLb ∧ cont) :
    Fin C H sgOp0 PWs Γ0 s0 [] (OpQ T base) (some r) t := by
  obtain ⟨Γ, ht, hev, hgl, hmem, hc⟩ := h
  refine fin_of_trk hH ht hp0 (fun h => by cases h) (fun _ _ _ _ => retOK_nil _)
    fun t' h1 h2 e' he' => ?_
  rw [evObj_unique hL0 he' he]
  refine ⟨by rw [h1]; omega, by unfold fMEM at hmem ⊢; rw [h1]; exact hmem, fun hr => ?_⟩
  obtain ⟨hb, hct⟩ := hret hr
  refine ⟨by rw [h1]; omega, fun p hp => ?_⟩
  unfold fMEM fMCAP; rw [h1]
  exact hc hct p (by rw [← hp]; exact ptrsOf_congr h2.symm)

/-- The running EV object of a callee entry state is the caller's. -/
theorem ev_base_eq {s : State σ} {Γ : Gam} {e e' : Obj}
    (hev : s.globals.lookup gEv = some (.val (.word e.base))) {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    (h : EvObj T Γ (callEntryStateHOLFinite s callee) e') : e'.base = e.base := by
  have := h.2.2.symm.trans hev
  simpa using this

/-- `var x = stack_pop(); k` inside an opcode body. -/
theorem hoareG_popOp (hC : X.code.lookup = guestCode) (hH : HooksLawful C H) (hE : EvCfg C T)
    (hK : EvHook C H T) (hGLp : (C.ty T.ev).slot 8 = .prot) {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {PWs : BitVec 64 → Prop} {e : Obj} {GLb : Nat} {cont : Prop} {base : Nat}
    (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (he : EvObj T Γ0 s0 e) (hp0 : ptrsOf s0 = some p0)
    (hPW2 : PWs (e.cell 2))
    {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {x : MlS} {k : ProgHOL 64}
    (hk : ∀ ws : List (BitVec 64), ws.length = 4 → HoareG σ X (fun t =>
      OpInv C H Γ0 s0 p0 PWs e GLb cont t ∧ ∃ l, L l ∧ t.locals = l.update (x, wv ws)) k
        (Fin C H sgOp0 PWs Γ0 s0 [] (OpQ T base))) :
    HoareG σ X (fun t => OpInv C H Γ0 s0 p0 PWs e GLb cont t ∧ L t.locals)
      (.decCall x (shK 4) (nm "stack_pop") [] k) (Fin C H sgOp0 PWs Γ0 s0 [] (OpQ T base)) := by
  have hP := sumSpec_rel (sum_stack_pop (X := X) hC hH hE hK)
  have step : ∀ (s : State σ), InCtx s X → OpInv C H Γ0 s0 p0 PWs e GLb cont s →
      ∀ vs, evs s [] = some vs → ∀ callee r (st : State σ),
      SumRel C H sgNone (fun _ _ _ => True) (PWev T [2]) (PopQ T) vs
        (callEntryStateHOLFinite s callee) r st → st.be = (callEntryStateHOLFinite s callee).be →
      InCtx st X → Good (some r) → OpInv C H Γ0 s0 p0 PWs e GLb cont st := by
    intro s hs hI vs hvs callee r st hR hbe hst hgood
    have hvs' : vs = [] := by simpa [evs, evalListHOLExact] using hvs.symm
    subst hvs'
    obtain ⟨-, -, hev, -⟩ := id hI
    exact (opInv_callSum hH hE hGLp hord0 hL0 he.1 he.2.1 (by simp [sgNone])
      (fun _ _ => by simp [sgNone]) hI hR hgood (hst.2.1.trans hs.2.1.symm) hbe rfl
      (fun _ _ => trivial)
      (fun Γ a _ ⟨e', he', k, hk', hak⟩ => by
        simp only [List.mem_singleton] at hk'
        subst hk'
        rw [hak, cells_base (ev_base_eq hev he')]; exact hPW2)
      (fun Γ a ⟨e', he', k, hk', hak⟩ => by
        simp only [List.mem_singleton] at hk'
        subst hk'
        rw [hak, cells_base (ev_base_eq hev he')]
        exact ⟨cell_ne e (by decide) (by decide) (by decide),
          cell_ne e (by decide) (by decide) (by decide), cell_ne e (by decide) (by decide) (by decide)⟩)
      (fun Γ Γ' hQ => hQ.2.1)).1
  refine hoareG_decCall hP (fun s hs ⟨hI, hl⟩ vs hvs callee v st ⟨hR, hbe⟩ hst hsh => ?_)
    (fun s hs ⟨hI, hl⟩ vs hvs callee r st ⟨hR, hbe⟩ hst habn => ?_)
  · have hI' := step s hs hI vs hvs callee _ st hR hbe hst (by simp)
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' hsh
    refine hoareG_conseq (hk ws hws) (fun t _ ht => ?_) (fun r t _ _ h => fin_locals h _)
    subst ht
    exact ⟨opInv_congr hH hI' rfl rfl rfl rfl, s.locals, hl, rfl⟩
  · have hI' := step s hs hI vs hvs callee r st hR hbe hst (abn_good habn)
    exact opInv_fin hH hL0 he hp0 (opInv_congr hH hI' rfl rfl rfl rfl)
      (fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v))

/-- `f(args); rest` with a callee relation `R`. -/
theorem hoareG_callD_seq {P P' : State σ → Prop} {F : Option (PanSemResultExact 64) → State σ → Prop}
    {f : MlS} {args : List (ExpHOL 64)} {rest : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hf : FunSpec σ X f R)
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee v (st : State σ),
      R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
      P' { st with locals := s.locals })
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs → ∀ callee r (st : State σ),
      R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → Abn r →
      F (some r) (emptyLocalsHOLFinite st))
    (hrest : HoareG σ X P' rest F) : HoareG σ X P (.seq (callD f args) rest) F := by
  refine hoareG_seq (R := fun r t => (r ≠ none → F r t) ∧ (r = none → P' t)) ?_
    (fun r t _ hr _ h => h.1 hr) (hoareG_pre hrest fun _ _ h => h.2 rfl)
  exact hoareG_callD hf (fun s hs hp vs hvs callee v st hR hst =>
      ⟨fun h => absurd rfl h, fun _ => hret s hs hp vs hvs callee v st hR hst⟩)
    (fun s hs hp vs hvs callee r st hR hst habn' =>
      ⟨fun _ => habn s hs hp vs hvs callee r st hR hst habn', fun h => by cases h⟩)

theorem overlap_inSM {T : STy} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {mo : Obj} (hmo : mo ∈ Γ) (hmot : mo.ty = T.mem) {b n : Nat} (hb : mo.lo ≤ b)
    (hn : b + n ≤ mo.hi) {a : BitVec 64} (ha : Overlap b n a) : InSM T Γ a := by
  obtain ⟨h8, h1, h2⟩ := ha
  have hob := (hL.1 mo hmo).1
  refine ⟨h8, mo, hmo, Or.inr hmot, ?_, by omega⟩
  unfold Obj.lo at *
  omega

theorem ev_c4 (s : State σ) (n : Nat) :
    ev s (c4 n) = some (wv [BitVec.ofNat 64 n, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
      BitVec.ofNat 64 0]) :=
  ev_rstruct (evs_cons (ev_cw _ n) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0)
    (evs_cons (ev_cw _ 0) evs_nil))))

/-- The frame memory of a tracked state covers `[MEM, MEM + MEM_LEN)`. -/
theorem trk_memObj (hE : EvCfg C T) (hK : EvHook C H T) {Γ0 Γ : Gam} {s0 t : State σ} {p0 : Ptrs}
    {PWs : BitVec 64 → Prop} {e : Obj} (he0 : e ∈ Γ0) (het : e.ty = T.ev)
    (h : Trk C H Γ0 s0 p0 PWs Γ t) :
    ∃ mo ∈ Γ, mo.ty = T.mem ∧ mo.base = fMEM t.memory e ∧
      (fLEN t.memory e).toNat ≤ mo.size ∧ mo.hi ≤ scratchEnd := by
  obtain ⟨e', he', hb', ht'⟩ := trk_ev h he0 het
  obtain ⟨q, hq, hord, hL⟩ := trk_ptrs h
  obtain ⟨-, ⟨h1, -, -, mo, hmo, hmob, hmot, hsz⟩⟩ := hK.get Γ t e' he' ht' (trk_hook h e' he')
  have e1 : fLEN t.memory e' = fLEN t.memory e := by unfold fLEN; rw [cells_base hb']
  have e2 : fMCAP t.memory e' = fMCAP t.memory e := by unfold fMCAP; rw [cells_base hb']
  rw [e1, e2] at h1
  rw [e2] at hsz
  refine ⟨mo, hmo, hmot, by rw [hmob]; unfold fMEM; rw [cells_base hb'], by omega,
    (obj_bounds hord hL hmo).2.1⟩

/-- **`op_mstore`**. -/
theorem sum_op_mstore (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hFA : AllocSpec σ X (nm "frame_mem_alloc") .fmem)
    (hZ : Summ σ X C H (nm "memzero") (sgMemzero gr))
    {sgC : Sig} {PreC : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWC : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {QC : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hCG : ChargeOK σ X C H T sgC PreC PWC QC) (hGLp : (C.ty T.ev).slot 8 = .prot)
    {sgP : Sig} {PreP : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWP : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {QP : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hPC : PcOK σ X C H T sgP PreP PWP QP) (hU : FootK σ X (nm "u256_to_be32") 1 32) :
    SumSpec σ X C H (nm "op_mstore") sgOp0 (CWMPre T) (PWev T [2, 4, 5, 8, 23]) (OpQ T 3) := by
  have hSW := pure_sat_word (σ := σ) hC
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 hloc Γ0 hG0 _ hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, rfl⟩ := lookupCode_zero code_op_mstore hl
  obtain ⟨e, he⟩ := evObj_of_G hE hG0
  obtain ⟨p0, hp0, hord0, hL0, -⟩ := id hG0
  obtain ⟨hgl, hcont⟩ := hpre e he
  set PWs := fun a => ProtCell C Γ0 a ∧ PWev T [2, 4, 5, 8, 23] [] s0 Γ0 a with hPWs
  have hPWa : ∀ a, ProtCell C Γ0 a → (∃ k ∈ [4, 5, 8, 23], a = e.cell k) → PWs a :=
    fun a hp ⟨k, hk, ha⟩ => ⟨hp, e, he, k, by simp at hk ⊢; omega, ha⟩
  have hPW2 : PWs (e.cell 2) :=
    ⟨smCell_prot hE hL0 he.1 he.2.1 ⟨2, by decide, rfl⟩, e, he, 2, by simp, rfl⟩
  have hI0 : OpInv C H Γ0 s0 p0 PWs e 0 True s0 :=
    ⟨Γ0, trk_refl hG0 hp0, he.2.2, by simp, rfl, fun _ p hp => hcont p hp⟩
  refine hoareG_pre (P := fun t => OpInv C H Γ0 s0 p0 PWs e 0 True t ∧ (fun _ => True) t.locals) ?_
    (fun t _ ht => by subst ht; exact ⟨hI0, trivial⟩)
  unfold opMstoreBody
  refine hoareG_popOp (GLb := 0) (cont := True) (base := 3) (L := fun _ => True) hC hH hE hK hGLp
    hord0 hL0 he hp0 hPW2 fun ws hws => ?_
  obtain ⟨a0, a1, a2, a3, rfl⟩ := wv4 hws
  refine hoareG_pre (P := fun t => OpInv C H Γ0 s0 p0 PWs e 0 True t ∧
      (fun l => l.lookup (nm "start") = some (wv [a0, a1, a2, a3])) t.locals) ?_
    (fun t _ ⟨hI, l, _, hl⟩ => ⟨hI, by rw [hl]; exact lk_upd_self _ _ _⟩)
  refine hoareG_popOp (GLb := 0) (cont := True) (base := 3)
    (L := fun l => l.lookup (nm "start") = some (wv [a0, a1, a2, a3])) hC hH hE hK hGLp
    hord0 hL0 he hp0 hPW2 fun ws hws => ?_
  obtain ⟨v0, v1, v2, v3, rfl⟩ := wv4 hws
  -- `charge_with_memory(3, start, <32>)`
  refine hoareG_callD_seq (P' := fun t => OpInv C H Γ0 s0 p0 PWs e 3 True t ∧
      t.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) ∧
      t.locals.lookup (nm "value") = some (wv [v0, v1, v2, v3]) ∧
      (satWordF a0 a1 a2 a3).toNat + 32 ≤ (fLEN t.memory e).toNat)
    (FunSpec.and (R := SumRel C H sgCWM (CWMPre T) (PWev T [4, 5, 8, 23]) (CWMQ T))
      (sum_charge_with_memory hC hH hM hE hK hFA hZ hCG hGLp) (funSpec_be' _)) ?_ ?_ ?_
  · intro s hs ⟨hI, l, hl1, hl⟩ vs hvs callee v st ⟨hR, hbe⟩ hst
    have lst : s.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) := by
      rw [hl, lk_upd_ne' _ _ (by decide)]; exact hl1
    have lval : s.locals.lookup (nm "value") = some (wv [v0, v1, v2, v3]) := by
      rw [hl]; exact lk_upd_self _ _ _
    rw [evs_cons (ev_cw _ 3) (evs_cons (ev_lw' lst) (evs_cons (ev_c4 _ 32) evs_nil))] at hvs
    cases hvs
    obtain ⟨-, hr⟩ := opInv_cwm hH hE hGLp hord0 hL0 he hI hR (by simp)
      (hst.2.1.trans hs.2.1.symm) hbe rfl hgl hPWa
    obtain ⟨hI', hcov⟩ := hr ⟨v, rfl⟩
    have h32 := hcov (by decide)
    refine ⟨opInv_congr hH hI' rfl rfl rfl rfl, lst, lval, ?_⟩
    have : (satWordF (BitVec.ofNat 64 32) (BitVec.ofNat 64 0) (BitVec.ofNat 64 0)
      (BitVec.ofNat 64 0)).toNat = 32 := by decide
    rw [this] at h32
    exact h32
  · intro s hs ⟨hI, l, hl1, hl⟩ vs hvs callee r st ⟨hR, hbe⟩ hst habn
    have lst : s.locals.lookup (nm "start") = some (wv [a0, a1, a2, a3]) := by
      rw [hl, lk_upd_ne' _ _ (by decide)]; exact hl1
    rw [evs_cons (ev_cw _ 3) (evs_cons (ev_lw' lst) (evs_cons (ev_c4 _ 32) evs_nil))] at hvs
    cases hvs
    obtain ⟨hI', -⟩ := opInv_cwm hH hE hGLp hord0 hL0 he hI hR (abn_good habn)
      (hst.2.1.trans hs.2.1.symm) hbe rfl hgl hPWa
    exact opInv_fin hH hL0 he hp0 (opInv_congr hH hI' rfl rfl rfl rfl)
      (fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v))
  -- `var s = sat_word(start)`
  refine hoareG_decCallPb hSW (fun r t o h => fin_locals h _) fun u hu ⟨hI, lst, lval, hcov⟩ vs hvs
    callee v hR _ => ?_
  rw [evs_cons (ev_lw' lst) evs_nil] at hvs
  cases hvs
  have hvv := hR a0 a1 a2 a3 rfl
  subst hvv
  set S := satWordF a0 a1 a2 a3 with hS
  refine hoareG_pre (P := fun t => OpInv C H Γ0 s0 p0 PWs e 3 True t ∧
      t.locals.lookup (nm "value") = some (wv [v0, v1, v2, v3]) ∧
      t.locals.lookup (nm "s") = some (.val (.word S)) ∧ S.toNat + 32 ≤ (fLEN t.memory e).toNat) ?_
    (fun t ht ⟨hm, hg, hb, hl⟩ => ⟨opInv_congr hH hI hm hg (ht.2.1.trans hu.2.1.symm) hb,
      by rw [hl, lk_upd_ne' _ _ (by decide)]; exact lval, by rw [hl]; exact lk_upd_self _ _ _,
      by unfold fLEN; rw [hm]; exact hcov⟩)
  -- `u256_to_be32(value, MEM + s)`
  have key : ∀ (u : State σ), InCtx u X → OpInv C H Γ0 s0 p0 PWs e 3 True u →
      u.locals.lookup (nm "value") = some (wv [v0, v1, v2, v3]) →
      u.locals.lookup (nm "s") = some (.val (.word S)) → S.toNat + 32 ≤ (fLEN u.memory e).toNat →
      ∀ vs, evs u [lv (nm "value"), memAt "s"] = some vs →
      ∀ (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (st : State σ),
      ((Good (some r) → BufPreK' 1 32 vs →
        st.globals = (callEntryStateHOLFinite u callee).globals ∧
        ModifiesOnly (BufRK' 1 32 vs) (callEntryStateHOLFinite u callee).memory st.memory) ∧
        st.be = (callEntryStateHOLFinite u callee).be) → InCtx st X → Good (some r) →
      OpInv C H Γ0 s0 p0 PWs e 3 True st := by
    intro u hu hI lval ls hcov vs hvs callee r st ⟨hF, hbe⟩ hst hgood
    obtain ⟨Γ, ht, hev, -, hmemI, -⟩ := id hI
    obtain ⟨mo, hmo, hmot, hmob, hmosz, hmohi⟩ := trk_memObj hE hK he.1 he.2.1 ht
    obtain ⟨x0, vs1, rfl, hx0, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨x1, vs2, rfl, hx1, hvs2⟩ := evs_cons_inv hvs1
    simp only [evs, evalListHOLExact, Option.some.injEq] at hvs2
    subst hvs2
    rw [ev_lw' lval] at hx0; cases hx0
    obtain ⟨w, rfl⟩ := ev_op_word hx1
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hx1
    obtain ⟨hy', -⟩ := ev_evL hev hy
    cases hy'
    rw [ev_lw' ls] at hz; cases hz
    have hMEM : rd u.memory (e.base + BitVec.ofNat 64 24) = mo.base := hmob.symm
    rw [hMEM] at hF
    have hlo : (mo.base + S).toNat = mo.base.toNat + S.toNat := toNat_add_small (by
      unfold Obj.hi scratchEnd at hmohi; omega)
    have hpre : BufPreK' 1 32 [wv [v0, v1, v2, v3], .val (.word (mo.base + S))] :=
      ⟨mo.base + S, rfl, by rw [hlo]; unfold Obj.hi at hmohi; omega⟩
    obtain ⟨hg, hmod⟩ := hF hgood hpre
    refine opInv_foot hH hE hK hGLp hord0 hL0 he.1 he.2.1 hI hg (hst.2.1.trans hu.2.1.symm) hbe
      hmod fun Γ' ht' a ⟨D, hD, hov⟩ => ?_
    cases hD
    obtain ⟨mo', hmo', hmot', hmob', hmosz', hmohi'⟩ := trk_memObj hE hK he.1 he.2.1 ht'
    rw [hlo] at hov
    refine overlap_inSM (trk_ptrs ht').choose_spec.2.1 (trk_ptrs ht').choose_spec.2.2 hmo' hmot'
      (by unfold Obj.lo; rw [hmob', ← hmob]; omega) (by unfold Obj.hi; rw [hmob', ← hmob]; omega) hov
  refine hoareG_callD_seq (P' := fun t => OpInv C H Γ0 s0 p0 PWs e 3 True t)
    (FunSpec.and hU (funSpec_be' _)) ?_ ?_ ?_
  · intro u hu ⟨hI, lval, ls, hcov⟩ vs hvs callee v st hR hst
    exact opInv_congr hH (key u hu hI lval ls hcov vs hvs callee _ st hR hst (by simp)) rfl rfl
      rfl rfl
  · intro u hu ⟨hI, lval, ls, hcov⟩ vs hvs callee r st hR hst habn
    exact opInv_fin hH hL0 he hp0 (opInv_congr hH (key u hu hI lval ls hcov vs hvs callee r st hR
      hst (abn_good habn)) rfl rfl rfl rfl) (fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v))
  -- `pc_add(1)`
  have keyP : ∀ (u : State σ), InCtx u X → OpInv C H Γ0 s0 p0 PWs e 3 True u →
      ∀ vs, evs u [cw 1] = some vs →
      ∀ (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (st : State σ),
      (SumRel C H sgP PreP PWP QP vs (callEntryStateHOLFinite u callee) r st ∧
        st.be = (callEntryStateHOLFinite u callee).be) → InCtx st X → Good (some r) →
      OpInv C H Γ0 s0 p0 PWs e 3 True st := by
    intro u hu hI vs hvs callee r st ⟨hR, hbe⟩ hst hgood
    rw [evs_cons (ev_cw _ 1) evs_nil] at hvs
    cases hvs
    obtain ⟨-, -, hev, -⟩ := id hI
    exact (opInv_callSum hH hE hGLp hord0 hL0 he.1 he.2.1 (by rw [hPC.params]; simp) hPC.gw hI hR
      hgood (hst.2.1.trans hu.2.1.symm) hbe (by rw [hPC.params]; rfl)
      (fun Γ ht => by
        obtain ⟨e', he', hb', ht'⟩ := trk_ev ht he.1 he.2.1
        exact hPC.pre _ _ Γ e' ⟨he', ht', by rw [hb']; exact hev⟩)
      (fun Γ a _ hpw => absurd hpw (hPC.pw _ _ _ _)) (fun Γ a hpw => absurd hpw (hPC.pw _ _ _ _))
      (fun Γ Γ' hQ => (hPC.q _ _ _ _ _ _ hQ).2)).1
  refine hoareG_callD_seq (P' := fun t => OpInv C H Γ0 s0 p0 PWs e 3 True t)
    (FunSpec.and (R := SumRel C H sgP PreP PWP QP) hPC.spec (funSpec_be' _)) ?_ ?_ ?_
  · intro u hu hI vs hvs callee v st hR hst
    exact opInv_congr hH (keyP u hu hI vs hvs callee _ st hR hst (by simp)) rfl rfl rfl rfl
  · intro u hu hI vs hvs callee r st hR hst habn
    exact opInv_fin hH hL0 he hp0 (opInv_congr hH (keyP u hu hI vs hvs callee r st hR hst
      (abn_good habn)) rfl rfl rfl rfl) (fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v))
  refine hoareG_return fun u _ hI v hv => ?_
  exact opInv_fin hH hL0 he hp0 (opInv_congr hH hI rfl rfl rfl rfl) (fun _ => ⟨le_refl _, trivial⟩)

end InitECandidate.Solver.MemSafe.Struct
