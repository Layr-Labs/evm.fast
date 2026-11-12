import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.WaveHelpers.FeSet
import InitECandidate.Solver.MemSafe.AExp
import Guest.SoftwareAst

set_option autoImplicit false

/-!
# The field-element loops `fe_neg`, `fe_add`, `fe_sub`, `fe_mul_small`

```
fun 1 fe_neg(1 fld, 1 d, 1 a) {
  var i = 0;
  while i <+ fld { var x = lds {4} (a + i*32); var r = fq_neg(x); st d + i*32, r; i = i + 1; }
  return 0; }
```
(`fe_add` / `fe_sub`: two loads, `fq_add(x, y)` / `fq_sub(x, y)`; `fe_mul_small`: `fq_mul_small(x, k)`.)

Every store hits `[d, d + 32 fld)`, the buffer argument. The callees `fq_*` are given by their
capability summaries (`.any` parameters). The summaries hold for any signature whose arguments
make `[d, d + 32 fld)` a buffer of argument cells (`FeBuf`), e.g. `[.any, .bufArg 0 32 0, …]`
(`feBuf_bufArg`) or the instances `[.eq c, .buf n, …]` with `32 c ≤ n` (`feBuf_eq`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-! ## Signatures -/

/-- The arguments make `[d, d + 32 fld)` a buffer of argument cells. -/
def FeBuf (C : Cfg) (ps : List PT) : Prop :=
  ∀ Γ p vs, ArgsOK C Γ p ps vs → ∀ F D : BitVec 64, argW vs 0 = some F → argW vs 1 = some D →
    BufOK C Γ p D.toNat (32 * F.toNat) ∧ ∀ x, Overlap D.toNat (32 * F.toNat) x → ArgCells ps vs x

theorem feBuf_bufArg (C : Cfg) (rest : List PT) : FeBuf C (.any :: .bufArg 0 32 0 :: rest) := by
  intro Γ p vs hA F D hF hD
  obtain ⟨v, hv, w, x, hw, hx, hb⟩ := arg_at hA (i := 1) (pt := .bufArg 0 32 0) rfl
  have hwD : argW vs 1 = some w := argW_of hv hw
  rw [hD] at hwD
  cases hwD
  rw [hF] at hx
  cases hx
  refine ⟨by simpa using hb, fun y hy => argCells_bufArg_at (i := 1) (j := 0) (c := 32) (d := 0)
    rfl hD hF (by simpa using hy)⟩

theorem feBuf_eq (C : Cfg) (rest : List PT) {c n : Nat} (hc : 32 * c ≤ n) (hc64 : c < 2 ^ 64) :
    FeBuf C (.eq c :: .buf n :: rest) := by
  intro Γ p vs hA F D hF hD
  obtain ⟨v0, hv0, h0⟩ := arg_at hA (i := 0) (pt := .eq c) rfl
  obtain ⟨v1, hv1, w, hw, hb⟩ := arg_at hA (i := 1) (pt := .buf n) rfl
  have hF' : argW vs 0 = some (BitVec.ofNat 64 c) := argW_of hv0 h0
  rw [hF] at hF'
  cases hF'
  have hwD : argW vs 1 = some w := argW_of hv1 hw
  rw [hD] at hwD
  cases hwD
  have hc' : (BitVec.ofNat 64 c).toNat = c := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc64]
  rw [hc']
  exact ⟨Helpers.bufOK_sub hb (le_refl _) (by omega), fun y hy =>
    argCells_buf_at (i := 1) (n := n) rfl hD (Helpers.overlap_mono hy (le_refl _) (by omega))⟩

/-! ## Locals -/

def FL (F D I : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "fld") = some (.val (.word F)) ∧ m.lookup (nm "d") = some (.val (.word D)) ∧
    m.lookup (nm "i") = some (.val (.word I))

def FLI (F D : BitVec 64) (m : LocalsH) : Prop := ∃ I : BitVec 64, FL F D I m ∧ I.toNat ≤ F.toNat

theorem fl_sv {F D I : BitVec 64} {s : State σ} (h : FL F D I s.locals) {x : MlS}
    (h1 : x ≠ nm "fld") (h2 : x ≠ nm "d") (h3 : x ≠ nm "i") (v : ValueHOL 64) :
    FL F D I (setVarHOLFinite x v s).locals :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1,
    by rw [lk_set_ne _ _ h3]; exact h.2.2⟩

theorem fli_res {F D : BitVec 64} {m : LocalsH} (h : FLI F D m) {x : MlS} (h1 : x ≠ nm "fld")
    (h2 : x ≠ nm "d") (h3 : x ≠ nm "i") (old : Option (ValueHOL 64)) :
    FLI F D (m.resVarEq (x, old)) := by
  obtain ⟨I, ⟨e1, e2, e3⟩, hI⟩ := h
  exact ⟨I, ⟨by rw [lookup_resVarEq_ne _ _ h1]; exact e1, by rw [lookup_resVarEq_ne _ _ h2]; exact e2,
    by rw [lookup_resVarEq_ne _ _ h3]; exact e3⟩, hI⟩

theorem evs_length {s : State σ} : ∀ {es : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s es = some vs → vs.length = es.length
  | [], vs, h => by rw [evs_nil] at h; cases h; rfl
  | e :: es, vs, h => by
      obtain ⟨v, vs', rfl, -, hvs⟩ := evs_cons_inv h
      simp [evs_length hvs]

def sh4 : ShapeHOL := .comb [.one, .one, .one, .one]

theorem abn_nb' {r : PanSemResultExact 64} (h : Abn r) : r ≠ .break ∧ r ≠ .continue := by
  rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩

def feAddr : ExpHOL 64 := .op .add [lv (nm "d"), .panop .mul [lv (nm "i"), cw 32]]

def feTail (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .decCall (nm "r") sh4 f args
    (.seq (.store feAddr (lv (nm "r"))) (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

/-! ## The loop tail: the call, the store, the increment -/

/-- `FL` and a four-word `r`. -/
def FLR (F D I : BitVec 64) (m : LocalsH) : Prop :=
  FL F D I m ∧ ∃ v, m.lookup (nm "r") = some v ∧ (flattenHOL v).length = 4

theorem fe_tail {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hlen : sg'.params.length = args.length) (hgw : sg'.gw = [])
    (hgr : sg'.grows = true → a.sg.grows = true) {F D I : BitVec 64}
    (hI : I.toNat < F.toNat) (hFD : D.toNat + 32 * F.toNat < 2 ^ 64)
    (hbuf : ∀ Γ p (s : State σ), Ext a.Γ0 Γ → Heap a Γ p s → ∀ x,
      Overlap D.toNat (32 * F.toNat) x → (SCell a.Cb Γ x ∨ ¬ InObj Γ x.toNat) ∧ a.Foot x) :
    HoareG σ X (PreH a (FL F D I)) (feTail f args) (SPA a (FLI F D)) := by
  unfold feTail
  refine hoareG_decCallSP (L' := FLR F D I) (L0' := FLI F D) ha hf (by simp [hgw]) hgr ?_ ?_ ?_ ?_
  · intro s _ _ Γ p _ _ vs hvs
    exact ⟨argsOK_any hps (by rw [hlen, evs_length hvs]), fun x hx => absurd hx (argCells_any hps)⟩
  · intro s hL v hsh
    refine ⟨fl_sv hL (by decide) (by decide) (by decide) v, v, lk_set_self _ _ _, ?_⟩
    have hs := (shapeEqHOL_eq_true _ _).mp hsh
    exact flatten_len v 4 (by rw [hs]; rfl)
  · refine hoareG_seqSP (L := FLR F D I) spa_of_abn ?_ ?_
    · refine hoareG_store fun s hs ⟨⟨⟨hf', hd, hi⟩, v, hr, hv4⟩, Γ, p, he, hh⟩ w v' mem hw hv hst => ?_
      rw [ev_lv, hr] at hv
      have hv' : v = v' := Option.some.inj hv
      subst hv'
      unfold feAddr at hw
      rw [ev_add2 (ev_lw hd) (ev_mul2 (ev_lw hi) (ev_cw _ 32))] at hw
      cases hw
      obtain ⟨hm, hdom⟩ := Helpers.stores_mod hst
      have h8 : (D + I * BitVec.ofNat 64 32).toNat % 8 = 0 := by
        have := ha.hal _ (hs.2.1 ▸ hdom 0 (by omega))
        simpa using this
      have e1 : (I * BitVec.ofNat 64 32).toNat = 32 * I.toNat := by
        rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32) (by decide),
          Nat.mod_eq_of_lt (by omega)]
        omega
      have e2 : (D + I * BitVec.ofNat 64 32).toNat = D.toNat + 32 * I.toNat := by
        rw [BitVec.toNat_add, e1, Nat.mod_eq_of_lt (by omega)]
      have hcell : ∀ x : BitVec 64, (∃ j, j < (flattenHOL v).length ∧
          x = D + I * BitVec.ofNat 64 32 + BitVec.ofNat 64 (8 * j)) →
          Overlap D.toNat (32 * F.toNat) x := by
        rintro x ⟨j, hj, rfl⟩
        rw [hv4] at hj
        have e3 : (D + I * BitVec.ofNat 64 32 + BitVec.ofNat 64 (8 * j)).toNat =
            D.toNat + 32 * I.toNat + 8 * j := by
          rw [BitVec.toNat_add, e2, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * j) (by omega),
            Nat.mod_eq_of_lt (by omega)]
        refine ⟨?_, ?_, ?_⟩ <;> rw [e3] <;> omega
      exact ⟨fun _ => ⟨⟨⟨hf', hd, hi⟩, v, hr, hv4⟩, Γ, p, he,
        heap_store_buf ha hh hm (fun x hx => (hbuf Γ p s he hh x (hcell x hx)).1)
          (fun x hx => (hbuf Γ p s he hh x (hcell x hx)).2)⟩, fun r' h => absurd h (by simp)⟩
    · refine hoareG_assignSP ha.hH fun s _ hL v hv => ?_
      obtain ⟨⟨hf', hd, hi⟩, -⟩ := hL
      rw [ev_add2 (ev_lw hi) (ev_cw _ 1)] at hv
      cases hv
      have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
      exact ⟨_, ⟨by rw [lk_set_ne _ _ (by decide)]; exact hf', by rw [lk_set_ne _ _ (by decide)]; exact hd,
        lk_set_self _ _ _⟩, by omega⟩
  · intro m old h
    exact fli_res h (by decide) (by decide) (by decide) old

/-! ## The loop -/

def feLoad (b : String) : ExpHOL 64 :=
  .load sh4 (.op .add [lv (nm b), .panop .mul [lv (nm "i"), cw 32]])

def feCond : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "fld"))

def feBody1 (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .dec (nm "x") sh4 (feLoad "a") (feTail f args)

def feBody2 (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .dec (nm "x") sh4 (feLoad "a") (.dec (nm "y") sh4 (feLoad "b") (feTail f args))

def feFun (lb : ProgHOL 64) : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0) (.seq (.while feCond lb) (.return (cw 0)))

theorem fe_body1 {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)} {F D I : BitVec 64}
    (ht : HoareG σ X (PreH a (FL F D I)) (feTail f args) (SPA a (FLI F D))) :
    HoareG σ X (PreH a (FL F D I)) (feBody1 f args) (SPA a (FLI F D)) :=
  hoareG_decSP ha.hH (fun s _ hL v _ => fl_sv hL (by decide) (by decide) (by decide) v) ht
    fun m old h => fli_res h (by decide) (by decide) (by decide) old

theorem fe_body2 {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)} {F D I : BitVec 64}
    (ht : HoareG σ X (PreH a (FL F D I)) (feTail f args) (SPA a (FLI F D))) :
    HoareG σ X (PreH a (FL F D I)) (feBody2 f args) (SPA a (FLI F D)) :=
  hoareG_decSP ha.hH (fun s _ hL v _ => fl_sv hL (by decide) (by decide) (by decide) v)
    (hoareG_decSP ha.hH (fun s _ hL v _ => fl_sv hL (by decide) (by decide) (by decide) v) ht
      fun m old h => fli_res h (by decide) (by decide) (by decide) old)
    fun m old h => fli_res h (by decide) (by decide) (by decide) old

theorem fe_fun {a : Act σ} (ha : ActOK a X) {lb : ProgHOL 64} {F D : BitVec 64}
    (hlb : ∀ I : BitVec 64, I.toNat < F.toNat →
      HoareG σ X (PreH a (FL F D I)) lb (SPA a (FLI F D))) :
    HoareG σ X (PreH a (fun m => m.lookup (nm "fld") = some (.val (.word F)) ∧
      m.lookup (nm "d") = some (.val (.word D)))) (feFun lb) (HQa a) := by
  unfold feFun
  refine hoareG_decH ha.hH (L' := FLI F D) ?_ ?_
  · intro s _ hL v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, ⟨by rw [lk_set_ne _ _ (by decide)]; exact hL.1,
      by rw [lk_set_ne _ _ (by decide)]; exact hL.2, lk_set_self _ _ _⟩, by simp⟩
  refine hoareG_seqSP (L := FLI F D) hqa_of_abn ?_ ?_
  · refine hoareG_while (fun t h => ⟨h.1, hha_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
    · refine hoareG_conseq (Q := SPA a (FLI F D)) ?_ (fun _ _ h => h) ?_
      · intro s hs ⟨⟨⟨I, ⟨h1, h2, h3⟩, hIF⟩, hH'⟩, hc⟩
        obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp hc
        have hlt := lower_true (cmp_val_true hw hw0 (ev_lw h3) (ev_lw h1))
        exact hlb I hlt s hs ⟨⟨h1, h2, h3⟩, hH'⟩
      · intro r t _ _ h
        refine ⟨h.1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h' => ?_, h.2⟩⟩
        · exact absurd rfl (abn_nb' (h.2 _ hc).1).2
        · exact absurd rfl (abn_nb' (h.2 _ hb).1).1
        · rw [hr'] at h'; cases h'
    · intro s _ h _
      exact ⟨fun _ => h, fun r' h => absurd h (by simp)⟩
  · exact hoareG_return fun t _ ⟨_, hH'⟩ v _ =>
      hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _

/-! ## The functions -/

/-- **The generic field-element loop function.** -/
theorem csumm_fe_gen {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {fn : MlS} {ps0 : List (MlS × ShapeHOL)} {lbf : ProgHOL 64}
    (hcode : X.code.lookup fn = some (ps0, feFun lbf, .one))
    (h0 : ps0[0]? = some (nm "fld", .one)) (h1 : ps0[1]? = some (nm "d", .one))
    {sg : Sig} (hfb : FeBuf C sg.params) (hret : sg.ret = [])
    (hlb : ∀ (a : Act σ), ActOK a X → a.Cb = C → a.H = H → a.sg = sg → ∀ F D I : BitVec 64,
      I.toNat < F.toNat → D.toNat + 32 * F.toNat < 2 ^ 64 →
      (∀ Γ p (s : State σ), Ext a.Γ0 Γ → Heap a Γ p s → ∀ x,
        Overlap D.toNat (32 * F.toNat) x → (SCell a.Cb Γ x ∨ ¬ InObj Γ x.toNat) ∧ a.Foot x) →
      HoareG σ X (PreH a (FL F D I)) lbf (SPA a (FLI F D))) :
    CSumm σ X C H fn sg [] := by
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  obtain ⟨rfl, -, hlen, hb⟩ := lookupCode_gen hcode hl
  have hl0 : 0 < ps0.length := (List.getElem?_eq_some_iff.mp h0).1
  have hl1 : 1 < ps0.length := (List.getElem?_eq_some_iff.mp h1).1
  have e0 : ps0[0] = (nm "fld", .one) := (List.getElem?_eq_some_iff.mp h0).2
  have e1 : ps0[1] = (nm "d", .one) := (List.getElem?_eq_some_iff.mp h1).2
  obtain ⟨hF0, hsF⟩ := hb 0 hl0 (by omega)
  obtain ⟨hD0, hsD⟩ := hb 1 hl1 (by omega)
  rw [e0] at hF0 hsF
  rw [e1] at hD0 hsD
  obtain ⟨F, hFv⟩ := val_of_shapeEq_one hsF
  obtain ⟨D, hDv⟩ := val_of_shapeEq_one hsD
  have hF : argW vs 0 = some F := by
    rw [argW, List.getElem?_eq_getElem (by omega), hFv]; rfl
  have hD : argW vs 1 = some D := by
    rw [argW, List.getElem?_eq_getElem (by omega), hDv]; rfl
  obtain ⟨hbufE, hargE⟩ := hfb Γ0 p0 vs ha.hargs0 F D hF hD
  have hFD : 32 * F.toNat = 0 ∨ D.toNat + 32 * F.toNat ≤ scratchEnd := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact Helpers.bufOK_bound hord hL D.isLt hbufE
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine hoareG_conseq (P := PreH (actOf C H sg [] vs s0 Γ0 p0)
      (fun m => m.lookup (nm "fld") = some (.val (.word F)) ∧
        m.lookup (nm "d") = some (.val (.word D))))
    (Q := HQa (actOf C H sg [] vs s0 Γ0 p0)) (fe_fun ha fun I hI => ?_) ?_ ?_
  · refine hlb _ ha rfl rfl rfl F D I hI (by omega) fun Γ p s he hh' x hx => ?_
    rcases bufOK_later ha hh' he hbufE x hx with hs | ⟨hn, -⟩
    · exact ⟨Or.inl hs, Or.inr (Or.inl (hargE x hx))⟩
    · exact ⟨Or.inr hn, Or.inr (Or.inl (hargE x hx))⟩
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc, hF0, hFv], by rw [hloc, hD0, hDv]⟩, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by rw [hret] at hrt; simp at hrt⟩

/-! ### `fe_neg`, `fe_mul_small`, `fe_add`, `fe_sub` -/

def feNegBody : ProgHOL 64 := feFun (feBody1 (nm "fq_neg") [lv (nm "x")])
def feMulSmallBody : ProgHOL 64 := feFun (feBody1 (nm "fq_mul_small") [lv (nm "x"), lv (nm "k")])
def feAddBody : ProgHOL 64 := feFun (feBody2 (nm "fq_add") [lv (nm "x"), lv (nm "y")])
def feSubBody : ProgHOL 64 := feFun (feBody2 (nm "fq_sub") [lv (nm "x"), lv (nm "y")])

def feP3 : List (MlS × ShapeHOL) := [(nm "fld", .one), (nm "d", .one), (nm "a", .one)]
def feP4 (b : String) : List (MlS × ShapeHOL) :=
  [(nm "fld", .one), (nm "d", .one), (nm "a", .one), (nm b, .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_fe_neg : fnEntry Guest.Software.guestFn_fe_neg = (nm "fe_neg", feP3, feNegBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_fe_mul_small : fnEntry Guest.Software.guestFn_fe_mul_small =
    (nm "fe_mul_small", feP4 "k", feMulSmallBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_fe_add : fnEntry Guest.Software.guestFn_fe_add =
    (nm "fe_add", feP4 "b", feAddBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_fe_sub : fnEntry Guest.Software.guestFn_fe_sub =
    (nm "fe_sub", feP4 "b", feSubBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_fe_neg : guestCode (nm "fe_neg") = some (feP3, feNegBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 665) (by decide)) ⟨_, rfl⟩
    entry_fe_neg
theorem code_fe_mul_small : guestCode (nm "fe_mul_small") = some (feP4 "k", feMulSmallBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 666) (by decide)) ⟨_, rfl⟩
    entry_fe_mul_small
theorem code_fe_add : guestCode (nm "fe_add") = some (feP4 "b", feAddBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 663) (by decide)) ⟨_, rfl⟩
    entry_fe_add
theorem code_fe_sub : guestCode (nm "fe_sub") = some (feP4 "b", feSubBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 664) (by decide)) ⟨_, rfl⟩
    entry_fe_sub

section fns
variable {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
  (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
  (hX : X.code.lookup = guestCode) {sg sgq : Sig} (hfb : FeBuf C sg.params) (hret : sg.ret = [])
  (hpq : ∀ pt ∈ sgq.params, pt = .any) (hgq : sgq.gw = [])
  (hgr : sgq.grows = true → sg.grows = true)
include hH hC hal hAC hNS hX hfb hret hpq hgq hgr

theorem csumm_fe_neg (hlq : sgq.params.length = 1) (hq : CSumm σ X C H (nm "fq_neg") sgq []) :
    CSumm σ X C H (nm "fe_neg") sg [] :=
  csumm_fe_gen hH hC hal hAC hNS (by rw [hX]; exact code_fe_neg) rfl rfl hfb hret
    fun a ha hc hH' hs F D I hI hFD hbuf => fe_body1 ha (fe_tail (args := [lv (nm "x")]) ha
      (hc ▸ hH' ▸ hq) hpq (by rw [hlq]; rfl) hgq (hs ▸ hgr) hI hFD hbuf)

theorem csumm_fe_mul_small (hlq : sgq.params.length = 2)
    (hq : CSumm σ X C H (nm "fq_mul_small") sgq []) :
    CSumm σ X C H (nm "fe_mul_small") sg [] :=
  csumm_fe_gen hH hC hal hAC hNS (by rw [hX]; exact code_fe_mul_small) rfl rfl hfb hret
    fun a ha hc hH' hs F D I hI hFD hbuf => fe_body1 ha (fe_tail (args := [lv (nm "x"), lv (nm "k")])
      ha (hc ▸ hH' ▸ hq) hpq (by rw [hlq]; rfl) hgq (hs ▸ hgr) hI hFD hbuf)

theorem csumm_fe_add (hlq : sgq.params.length = 2) (hq : CSumm σ X C H (nm "fq_add") sgq []) :
    CSumm σ X C H (nm "fe_add") sg [] :=
  csumm_fe_gen hH hC hal hAC hNS (by rw [hX]; exact code_fe_add) rfl rfl hfb hret
    fun a ha hc hH' hs F D I hI hFD hbuf => fe_body2 ha (fe_tail (args := [lv (nm "x"), lv (nm "y")])
      ha (hc ▸ hH' ▸ hq) hpq (by rw [hlq]; rfl) hgq (hs ▸ hgr) hI hFD hbuf)

theorem csumm_fe_sub (hlq : sgq.params.length = 2) (hq : CSumm σ X C H (nm "fq_sub") sgq []) :
    CSumm σ X C H (nm "fe_sub") sg [] :=
  csumm_fe_gen hH hC hal hAC hNS (by rw [hX]; exact code_fe_sub) rfl rfl hfb hret
    fun a ha hc hH' hs F D I hI hFD hbuf => fe_body2 ha (fe_tail (args := [lv (nm "x"), lv (nm "y")])
      ha (hc ▸ hH' ▸ hq) hpq (by rw [hlq]; rfl) hgq (hs ▸ hgr) hI hFD hbuf)

end fns

end InitECandidate.Solver.MemSafe.WaveHelpers
