import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.Seq
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes
import InitECandidate.Solver.MemSafe.Fold
import Guest.SoftwareAst

set_option autoImplicit false

/-!
# `fe_set_zero` and `fe_set_one`

```
fun 1 fe_set_zero(1 fld, 1 d) { memzero(d, fld * 32); return 0; }
fun 1 fe_set_one(1 fld, 1 d) { memzero(d, fld * 32); st d, <ONE (4 words)>; return 0; }
```

Both write only `[d, d + 32 fld)` (`fe_set_one` needs `fld ≥ 1`: with `fld = 0` it still
stores 32 bytes at `d`). The inferred signatures (`fe_set_zero: [.any, .any]`,
`fe_set_one: [.any, .buf 32]`) are not sound (`fld` unbounded); these are the sound ones:

* `summ_fe_set_zero`: `[.any, .bufArg 0 32 0]` (`d` has `32 fld` bytes), any `grows`;
* `summ_fe_set_zero_eq`: `[.eq c, .buf n]` with `32 c ≤ n`;
* `summ_fe_set_one_eq`: `[.eq c, .buf n]` with `1 ≤ c`, `32 c ≤ n` (instances `c = 1, 2, 12`);
* `sumSpec_fe_set_one`: `[.any, .bufArg 0 32 0]` under the precondition `fld ≥ 1` (needs a
  caller-side proof).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## A multi-word store -/

/-- A store of a `K`-word value at the local `p` into `[P, P + n) ⊆ Rf`, `8 K ≤ n`. -/
theorem hoareG_stK (hA : AlignedDom X) {p : MlS} {P : BitVec 64} {n K : Nat} {e : ExpHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hLp : ∀ m, L m → m.lookup p = some (.val (.word P)))
    (hK : 8 * K ≤ n) (hPn : P.toNat + n < 2 ^ 64) (hR : ∀ a, Overlap P.toNat n a → Rf a)
    (he : ∀ t : State σ, L t.locals → ∀ v, ev t e = some v → (flattenHOL v).length = K) :
    HoareG σ X (LPre Rf s0 L) (.store (lv p) e) (LQ Rf s0 L Ret) := by
  refine hoareG_store fun t hs hpre w v mem ha hv hst => ?_
  rw [ev_lw (hLp _ hpre.1)] at ha
  cases ha
  have hlen := he t hpre.1 v hv
  obtain ⟨hm, hdom⟩ := stores_mod hst
  refine ⟨⟨hpre.2.1, hpre.2.2.trans (hm.mono fun a ⟨j, hj, he'⟩ => ?_)⟩, fun _ => hpre.1,
    fun _ h => nomatch h⟩
  rw [hlen] at hj
  have h0 := hdom 0 (by omega)
  have hP8 : P.toNat % 8 = 0 := by
    have := hA _ (hs.2.1 ▸ h0)
    simpa using this
  subst he'
  have hw : (P + BitVec.ofNat 64 (8 * j)).toNat = P.toNat + 8 * j := toNat_addc (by omega)
  exact hR _ ⟨by rw [hw]; omega, by rw [hw]; omega, by rw [hw]; omega⟩

/-! ## The bodies -/

def fldN : MlS := nm "fld"
def dN' : MlS := nm "d"

/-- `memzero(d, fld * 32)` -/
def feZero : ProgHOL 64 := callD (nm "memzero") [lv dN', .panop .mul [lv fldN, cw 32]]

def feZeroBody : ProgHOL 64 := .seq feZero (.return (cw 0))

def feOneVal : ExpHOL 64 :=
  .rstruct [cw 15230403791020821917, cw 754611498739239741, cw 7381016538464732716,
    cw 1011752739694698287]

def feOneBody : ProgHOL 64 := .seq feZero (.seq (.store (lv dN') feOneVal) (.return (cw 0)))

def feParams : List (MlS × ShapeHOL) := [(fldN, .one), (dN', .one)]

theorem entry_fe_set_zero : fnEntry Guest.Software.guestFn_fe_set_zero =
    (nm "fe_set_zero", feParams, feZeroBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem entry_fe_set_one : fnEntry Guest.Software.guestFn_fe_set_one =
    (nm "fe_set_one", feParams, feOneBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_fe_set_zero : guestCode (nm "fe_set_zero") = some (feParams, feZeroBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 669) (by decide))
    ⟨_, rfl⟩ entry_fe_set_zero

theorem code_fe_set_one : guestCode (nm "fe_set_one") = some (feParams, feOneBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 670) (by decide))
    ⟨_, rfl⟩ entry_fe_set_one

/-! ## Footprints -/

/-- The arguments `(fld, d)` with `[d, d + 32 fld)` ending below `scratchEnd` (and `fld ≥ m`). -/
def FePre (m : Nat) (vs : List (ValueHOL 64)) : Prop :=
  ∃ F D : BitVec 64, argW vs 0 = some F ∧ argW vs 1 = some D ∧ m ≤ F.toNat ∧
    (32 * F.toNat = 0 ∨ D.toNat + 32 * F.toNat ≤ scratchEnd)

/-- The cells of `[d, d + 32 fld)`. -/
def FeR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ F D : BitVec 64, argW vs 0 = some F ∧ argW vs 1 = some D ∧ Overlap D.toNat (32 * F.toNat) a

def FeL (F D : BitVec 64) (m : Locals) : Prop :=
  m.lookup fldN = some (.val (.word F)) ∧ m.lookup dN' = some (.val (.word D))

theorem fe_mul32 {F : BitVec 64} (h : 32 * F.toNat < 2 ^ 64) :
    (F * BitVec.ofNat 64 32).toNat = 32 * F.toNat := by
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 32) (by decide),
    Nat.mod_eq_of_lt (by omega)]
  omega

/-- `memzero(d, fld * 32)` inside `[d, d + 32 fld)`. -/
theorem hoareG_feZero (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {F D : BitVec 64}
    {s0 : State σ} {Ret : ValueHOL 64 → Prop}
    (hFD : 32 * F.toNat = 0 ∨ D.toNat + 32 * F.toNat ≤ scratchEnd) :
    HoareG σ X (LPre (Overlap D.toNat (32 * F.toNat)) s0 (FeL F D)) feZero
      (LQ (Overlap D.toNat (32 * F.toNat)) s0 (FeL F D) Ret) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have h32 : (F * BitVec.ofNat 64 32).toNat = 32 * F.toNat := fe_mul32 (by omega)
  refine hoareG_callFoot (foot_memzero hC hA) fun t _ hpre vs hvs => ?_
  obtain ⟨hf, hd⟩ := hpre.1
  rw [evs_cons (ev_lw hd) (evs_cons (ev_mul2 (ev_lw hf) (ev_cw _ 32)) evs_nil)] at hvs
  cases hvs
  refine ⟨⟨D, F * BitVec.ofNat 64 32, rfl, rfl, by rw [h32]; exact hFD⟩, ?_⟩
  rintro a ⟨D', N', hD', hN', hov⟩
  cases hD'
  cases hN'
  rw [h32] at hov
  exact hov

theorem foot_fe_set_zero (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "fe_set_zero") (FePre 0) FeR := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsa, hsb, hla, hlb⟩ := lookupCode_two code_fe_set_zero (by decide) hl
  obtain ⟨F, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨F', D', hF, hD, -, hFD⟩ := hP
  cases hF
  cases hD
  refine hoareG_conseq (P := LPre (Overlap D.toNat (32 * F.toNat)) s0 (FeL F D))
    (Q := LP (Overlap D.toNat (32 * F.toNat)) s0 (FeL F D)) ?_ ?_ ?_
  · exact hoareG_seqL (hoareG_feZero hC hA hFD) hoareG_returnL
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩, rfl, fun _ _ => rfl⟩
  · intro r t _ _ h
    exact ⟨h.1.1, h.1.2.mono fun a ha => ⟨F, D, rfl, rfl, ha⟩⟩

theorem foot_fe_set_one (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "fe_set_one") (FePre 1) FeR := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsa, hsb, hla, hlb⟩ := lookupCode_two code_fe_set_one (by decide) hl
  obtain ⟨F, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨F', D', hF, hD, hF1, hFD⟩ := hP
  cases hF
  cases hD
  have hFD' : D.toNat + 32 * F.toNat ≤ scratchEnd := by omega
  refine hoareG_conseq (P := LPre (Overlap D.toNat (32 * F.toNat)) s0 (FeL F D))
    (Q := LP (Overlap D.toNat (32 * F.toNat)) s0 (FeL F D)) ?_ ?_ ?_
  · refine hoareG_seqL (hoareG_feZero hC hA hFD) (hoareG_seqL (L2 := FeL F D) ?_ hoareG_returnL)
    refine hoareG_stK hA (K := 4) (n := 32 * F.toNat) (fun m h => h.2) (by omega) (by omega)
      (fun a h => h) ?_
    intro t _ v hv
    unfold feOneVal at hv
    rw [ev_rstruct (evs_cons (ev_cw _ _) (evs_cons (ev_cw _ _) (evs_cons (ev_cw _ _)
      (evs_cons (ev_cw _ _) evs_nil))))] at hv
    cases hv
    simp [flattenHOL]
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩, rfl, fun _ _ => rfl⟩
  · intro r t _ _ h
    exact ⟨h.1.1, h.1.2.mono fun a ha => ⟨F, D, rfl, rfl, ha⟩⟩

/-! ## The summaries -/

def sigFeZero (g : Bool) : Sig := ⟨[.any, .bufArg 0 32 0], [], [], g⟩
def sigFeEq (c n : Nat) (g : Bool) : Sig := ⟨[.eq c, .buf n], [], [], g⟩

/-- The value at index `i` of fitting arguments. -/
theorem arg_at {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {i : Nat} {pt : PT} (hps : ps[i]? = some pt) :
    ∃ v, vs[i]? = some v ∧ ArgOK C Γ p vs pt v := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  exact ⟨v, hv, hA.2 i _ v hps hv⟩

theorem argW_of {vs : List (ValueHOL 64)} {i : Nat} {v : ValueHOL 64} {w : BitVec 64}
    (hv : vs[i]? = some v) (hw : wordOf v = some w) : argW vs i = some w := by
  rw [argW, hv]; exact hw

theorem summ_fe_set_zero {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (g : Bool) :
    Summ σ X C H (nm "fe_set_zero") (sigFeZero g) := by
  refine summ_of_foot hH hT rfl (foot_fe_set_zero hC hA) ?_ ?_
  · intro Γ p vs hord hL hA'
    obtain ⟨v, hv, w, x, hw, hx, hb⟩ := arg_at hA' (i := 1) (pt := .bufArg 0 32 0) rfl
    refine ⟨x, w, hx, argW_of hv hw, Nat.zero_le _, ?_⟩
    have := Helpers.bufOK_bound hord hL w.isLt hb
    simpa using this
  · rintro vs a - ⟨F, D, hF, hD, hov⟩
    exact argCells_bufArg_at (i := 1) (j := 0) (c := 32) (d := 0) rfl hD hF (by simpa using hov)

theorem fePre_eq {C : Cfg} {Γ : Gam} {p : Ptrs} {vs : List (ValueHOL 64)} {c n m : Nat}
    (hm : m ≤ c) (hc : 32 * c ≤ n) (hc64 : 32 * c < 2 ^ 64) (hord : p.Ordered) (hL : Layout C p Γ)
    (hA : ArgsOK C Γ p [.eq c, .buf n] vs) : FePre m vs := by
  obtain ⟨v0, hv0, h0⟩ := arg_at hA (i := 0) (pt := .eq c) rfl
  obtain ⟨v1, hv1, w, hw, hb⟩ := arg_at hA (i := 1) (pt := .buf n) rfl
  have hF : argW vs 0 = some (BitVec.ofNat 64 c) := argW_of hv0 h0
  have hc' : (BitVec.ofNat 64 c).toNat = c := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine ⟨_, w, hF, argW_of hv1 hw, by rw [hc']; exact hm, ?_⟩
  rw [hc']
  rcases Helpers.bufOK_bound hord hL w.isLt hb with h | h
  · left; omega
  · right; omega

theorem feR_eq {vs : List (ValueHOL 64)} {c n : Nat} (hc : 32 * c ≤ n) (hc64 : 32 * c < 2 ^ 64)
    {a : BitVec 64} (hvs : argW vs 0 = some (BitVec.ofNat 64 c)) (h : FeR vs a) :
    ArgCells [.eq c, .buf n] vs a := by
  obtain ⟨F, D, hF, hD, hov⟩ := h
  rw [hvs] at hF
  cases hF
  have hc' : (BitVec.ofNat 64 c).toNat = c := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rw [hc'] at hov
  exact argCells_buf_at (i := 1) (n := n) rfl hD ⟨hov.1, hov.2.1, by have := hov.2.2; omega⟩

theorem summ_fe_set_zero_eq {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c n : Nat} (hc : 32 * c ≤ n)
    (hc64 : 32 * c < 2 ^ 64) (g : Bool) : Summ σ X C H (nm "fe_set_zero") (sigFeEq c n g) := by
  refine summ_of_foot (Pre := fun vs => FePre 0 vs ∧ argW vs 0 = some (BitVec.ofNat 64 c)) hH hT
    rfl ((foot_fe_set_zero hC hA).mono fun _ _ _ _ h hg hP => h hg hP.1) ?_ ?_
  · intro Γ p vs hord hL hA'
    obtain ⟨v0, hv0, h0⟩ := arg_at hA' (i := 0) (pt := .eq c) rfl
    exact ⟨fePre_eq (Nat.zero_le _) hc hc64 hord hL hA', argW_of hv0 h0⟩
  · intro vs a hP h
    exact feR_eq hc hc64 hP.2 h

theorem summ_fe_set_one_eq {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {c n : Nat} (hc1 : 1 ≤ c)
    (hc : 32 * c ≤ n) (hc64 : 32 * c < 2 ^ 64) (g : Bool) :
    Summ σ X C H (nm "fe_set_one") (sigFeEq c n g) := by
  refine summ_of_foot (Pre := fun vs => FePre 1 vs ∧ argW vs 0 = some (BitVec.ofNat 64 c)) hH hT
    rfl ((foot_fe_set_one hC hA).mono fun _ _ _ _ h hg hP => h hg hP.1) ?_ ?_
  · intro Γ p vs hord hL hA'
    obtain ⟨v0, hv0, h0⟩ := arg_at hA' (i := 0) (pt := .eq c) rfl
    exact ⟨fePre_eq hc1 hc hc64 hord hL hA', argW_of hv0 h0⟩
  · intro vs a hP h
    exact feR_eq hc hc64 hP.2 h

end InitECandidate.Solver.MemSafe.WaveHelpers
