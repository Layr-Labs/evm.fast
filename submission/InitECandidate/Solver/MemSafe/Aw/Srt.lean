import InitECandidate.Solver.MemSafe.Aw.Keys

set_option autoImplicit false

/-!
# Target G, part 3: `sort_elems`
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

def eszN : MlS := nm "esz"
def auxN : MlS := nm "aux"
def srcN : MlS := nm "src"
def dstN : MlS := nm "dst"
def widthN : MlS := nm "width"
def leftN : MlS := nm "left"
def midN : MlS := nm "mid"
def rightN : MlS := nm "right"
def jjN : MlS := nm "j"
def kkN : MlS := nm "k"
def gtN : MlS := nm "gt"
def swapN : MlS := nm "swap"

def cpDst : ExpHOL 64 := .op .add [lv dstN, .panop .mul [lv kkN, lv eszN]]
def cpSrc (x : MlS) : ExpHOL 64 := .op .add [lv srcN, .panop .mul [lv x, lv eszN]]

def srtCond : ExpHOL 64 :=
  .op .and [.cmp .notEqual (cw 0) (.cmp .less (lv iN) (lv midN)),
    .cmp .notEqual (cw 0) (.cmp .less (lv jjN) (lv rightN))]

def srtStep : ProgHOL 64 :=
  .dec aN .one (cpSrc iN)
    (.dec bN .one (cpSrc jjN)
      (.decCall gtN .one (nm "bal_sort_gt") [lv aN, lv bN, lv kindN]
        (.seq (.ite (.cmp .equal (lv gtN) (cw 0))
            (.seq (callD (nm "memcpy") [cpDst, lv aN, lv eszN])
              (.assign .local iN (.op .add [lv iN, cw 1])))
            (.seq (callD (nm "memcpy") [cpDst, lv bN, lv eszN])
              (.assign .local jjN (.op .add [lv jjN, cw 1]))))
          (.assign .local kkN (.op .add [lv kkN, cw 1])))))

def srtTailI : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [cpDst, cpSrc iN, lv eszN])
    (.seq (.assign .local iN (.op .add [lv iN, cw 1]))
      (.assign .local kkN (.op .add [lv kkN, cw 1])))

def srtTailJ : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [cpDst, cpSrc jjN, lv eszN])
    (.seq (.assign .local jjN (.op .add [lv jjN, cw 1]))
      (.assign .local kkN (.op .add [lv kkN, cw 1])))

def srtMerge : ProgHOL 64 :=
  .seq (.while srtCond srtStep)
    (.seq (.while (.cmp .less (lv iN) (lv midN)) srtTailI)
      (.seq (.while (.cmp .less (lv jjN) (lv rightN)) srtTailJ)
        (.assign .local leftN (lv rightN))))

def srtInner : ProgHOL 64 :=
  .dec midN .one (.op .add [lv leftN, lv widthN])
    (.seq (.ite (.cmp .lower (lv nN) (lv midN)) (.assign .local midN (lv nN)) .skip)
      (.dec rightN .one (.op .add [lv midN, lv widthN])
        (.seq (.ite (.cmp .lower (lv nN) (lv rightN)) (.assign .local rightN (lv nN)) .skip)
          (.dec iN .one (lv leftN)
            (.dec jjN .one (lv midN)
              (.dec kkN .one (lv leftN) srtMerge))))))

def srtOuter : ProgHOL 64 :=
  .dec leftN .one (cw 0)
    (.seq (.while (.cmp .less (lv leftN) (lv nN)) srtInner)
      (.dec swapN .one (lv srcN)
        (.seq (.assign .local srcN (lv dstN))
          (.seq (.assign .local dstN (lv swapN))
            (.assign .local widthN (.panop .mul [lv widthN, cw 2]))))))

def srtEnd : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv srcN) (lv pN))
      (callD (nm "memcpy") [lv pN, lv srcN, .panop .mul [lv nN, lv eszN]]) .skip)
    (.seq (callD (nm "heap_release") [lv markN]) (.return (cw 0)))

def srtBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv nN) (cw 2)) (.return (cw 0)) .skip)
    (.decCall markN .one (nm "heap_mark") []
      (.decCall auxN .one (nm "alloc") [.panop .mul [lv nN, lv eszN]]
        (.dec srcN .one (lv pN)
          (.dec dstN .one (lv auxN)
            (.dec widthN .one (cw 1)
              (.seq (.while (.cmp .less (lv widthN) (lv nN)) srtOuter) srtEnd))))))

theorem code_sort_elems : guestCode (nm "sort_elems") =
    some ([(pN, .one), (nN, .one), (eszN, .one), (kindN, .one), (tmpN, .one)], srtBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_sort_elems =
      (nm "sort_elems", [(pN, .one), (nN, .one), (eszN, .one), (kindN, .one), (tmpN, .one)],
        srtBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 430) (by decide)) ⟨_, rfl⟩ h

theorem footRet_bal_sort_gt (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "bal_sort_gt") (fun _ => True) (fun _ _ => False) (fun _ _ => True) :=
  footRet_pure_fn pureSpecs_nil hC (d := Guest.Software.guestFn_bal_sort_gt)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 429) (by decide)) ⟨_, rfl⟩
    (by cbv) (by cbv)

theorem hoareG_false {P : State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : ∀ s, P s → False) :
    HoareG σ X P c Q := fun s _ hp _ => (h s hp).elim

theorem hoareG_exF {α : Type} {a : AwE σ} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {F : α → Prop} {B : α → Locals → Prop}
    (h : ∀ x, F x → HoareG σ X (APre a (B x)) c Q) :
    HoareG σ X (APre a (fun m => ∃ x, F x ∧ B x m)) c Q :=
  fun s hs ⟨hI, x, hF, hB⟩ hg => h x hF s hs ⟨hI, hB⟩ hg

structure SC where
  P : BitVec 64
  N : BitVec 64
  E : BitVec 64
  K : BitVec 64
  Aux : BitVec 64

def Lk (x : MlS) (v : BitVec 64) (m : Locals) : Prop := m.lookup x = some (.val (.word v))

theorem lk_upd {x y : MlS} {v w : BitVec 64} {m : Locals} (h : x ≠ y) (hy : Lk y w m) :
    Lk y w (m.update (x, .val (.word v))) := by
  unfold Lk at *; rw [lookup_update_ne _ _ h]; exact hy

theorem lk_updo {x y : MlS} {v : ValueHOL 64} {w : BitVec 64} {m : Locals} (h : x ≠ y)
    (hy : Lk y w m) : Lk y w (m.update (x, v)) := by
  unfold Lk at *; rw [lookup_update_ne _ _ h]; exact hy

theorem lk_res {x y : MlS} {o : Option (ValueHOL 64)} {w : BitVec 64} {m : Locals} (h : x ≠ y)
    (hy : Lk y w m) : Lk y w (m.resVarEq (x, o)) := by
  unfold Lk at *; rw [lookup_resVarEq_ne _ _ h]; exact hy

theorem lk_new (m : Locals) (x : MlS) (v : BitVec 64) : Lk x v (m.update (x, .val (.word v))) :=
  lookup_update_self _ _ _

theorem lk_inj {x : MlS} {v w : BitVec 64} {m : Locals} (h1 : Lk x v m) (h2 : Lk x w m) : v = w := by
  unfold Lk at h1 h2
  rw [h1] at h2
  have := Option.some.inj h2
  simpa using this

/-- Base facts: the parameters, the heap mark, `aux`, and `src`/`dst` in `{P, Aux}`. -/
def SBs (hp : Nat) (c : SC) (m : Locals) : Prop :=
  Lk pN c.P m ∧ Lk nN c.N m ∧ Lk eszN c.E m ∧ Lk kindN c.K m ∧ Lk auxN c.Aux m ∧
    MkB hp markN m ∧ ∃ s d : BitVec 64, Lk srcN s m ∧ Lk dstN d m ∧
      ((s = c.P ∧ d = c.Aux) ∨ (c.N.toNat < 2 ^ 63 ∧ s = c.Aux ∧ d = c.P))

theorem sbs_upd {hp : Nat} {c : SC} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h : SBs hp c m) : SBs hp c (m.update (x, v)) := by
  obtain ⟨a1, a2, a3, a4, a5, a6, s, d, a7, a8, a9⟩ := h
  exact ⟨lk_updo h1 a1, lk_updo h2 a2, lk_updo h3 a3, lk_updo h4 a4, lk_updo h5 a5,
    mkb_upd h6 a6, s, d, lk_updo h7 a7, lk_updo h8 a8, a9⟩

theorem sbs_res {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h : SBs hp c m) : SBs hp c (m.resVarEq (x, o)) := by
  obtain ⟨a1, a2, a3, a4, a5, a6, s, d, a7, a8, a9⟩ := h
  refine ⟨lk_res h1 a1, lk_res h2 a2, lk_res h3 a3, lk_res h4 a4, lk_res h5 a5, ?_,
    s, d, lk_res h7 a7, lk_res h8 a8, a9⟩
  obtain ⟨w, hw, b1, b2, b3⟩ := a6
  exact ⟨w, by rw [lookup_resVarEq_ne _ _ h6]; exact hw, b1, b2, b3⟩

structure SH (C : Cfg) (Γ : Gam) (h0 : Nat) (c : SC) : Prop where
  hh8 : h0 % 8 = 0
  aux1 : h0 ≤ c.Aux.toNat
  aux2 : c.Aux.toNat + (c.N * c.E).toNat ≤ heapEnd
  aux3 : c.Aux.toNat % 8 = 0
  big : c.N.toNat < 2 ^ 63 → c.N.toNat ≤ domTop ∧ c.N.toNat * c.E.toNat ≤ domTop + 64 ∧
    c.P.toNat + c.N.toNat * c.E.toNat ≤ scratchEnd ∧
    ∀ x, Overlap c.P.toNat (c.N.toNat * c.E.toNat) x → h0 ≤ x.toNat ∨ SCell C Γ x

theorem memcov_dst {a : AwE σ} {c : SC} (hsh : SH a.C a.Γ0 a.h0 c) (hN : c.N.toNat < 2 ^ 63)
    {W KB : BitVec 64} (hW : W = c.P ∨ W = c.Aux) (hk : KB.toNat < c.N.toNat)
    (x2 : ValueHOL 64) :
    MemCov a [.val (.word (W + KB * c.E)), x2, .val (.word c.E)] := by
  obtain ⟨hN1, hNE, hPs, hcov⟩ := hsh.big hN
  have hd : domTop = 1099511627776 := by decide
  have hHE : heapEnd = 2952790016 := rfl
  have hsc : scratchEnd < 2 ^ 62 := by decide
  have hNEm : (c.N * c.E).toNat = c.N.toNat * c.E.toNat := toNat_mul2 (by omega)
  have hkm : (KB * c.E).toNat = KB.toNat * c.E.toNat := toNat_mul2 (by
    have := Nat.mul_le_mul_right c.E.toNat (le_of_lt hk)
    omega)
  have hkE : (KB.toNat + 1) * c.E.toNat ≤ c.N.toNat * c.E.toNat :=
    Nat.mul_le_mul_right _ hk
  have hmul : (KB.toNat + 1) * c.E.toNat = KB.toNat * c.E.toNat + c.E.toNat := by
    rw [Nat.add_mul, Nat.one_mul]
  have hse : heapEnd ≤ scratchEnd := by decide
  have hWt : W.toNat + c.N.toNat * c.E.toNat ≤ scratchEnd := by
    rcases hW with rfl | rfl
    · exact hPs
    · have := hsh.aux2; rw [hNEm] at this; omega
  have hD : (W + KB * c.E).toNat = W.toNat + KB.toNat * c.E.toNat := by
    rw [toNat_add2 (by rw [hkm]; omega), hkm]
  refine ⟨W + KB * c.E, c.E, rfl, rfl, Or.inr (by rw [hD]; omega), fun x hx => ?_⟩
  rcases hW with rfl | rfl
  · exact hcov x (overlap_mono hx (by rw [hD]; omega) (by rw [hD]; omega))
  · left
    obtain ⟨hx1, hx2, hx3⟩ := hx
    have := hsh.aux1
    have := hsh.hh8
    have := hsh.aux3
    rw [hD] at hx2
    omega

/-- The `SBs` facts without `src`/`dst`. -/
def SBx (hp : Nat) (c : SC) (m : Locals) : Prop :=
  Lk pN c.P m ∧ Lk nN c.N m ∧ Lk eszN c.E m ∧ Lk kindN c.K m ∧ Lk auxN c.Aux m ∧ MkB hp markN m

def Sdc (c : SC) (s d : BitVec 64) : Prop :=
  (s = c.P ∧ d = c.Aux) ∨ (c.N.toNat < 2 ^ 63 ∧ s = c.Aux ∧ d = c.P)

theorem sbs_split {hp : Nat} {c : SC} {m : Locals} (h : SBs hp c m) :
    SBx hp c m ∧ ∃ s d : BitVec 64, Lk srcN s m ∧ Lk dstN d m ∧ Sdc c s d := by
  obtain ⟨a1, a2, a3, a4, a5, a6, r⟩ := h
  exact ⟨⟨a1, a2, a3, a4, a5, a6⟩, r⟩

theorem sbs_join {hp : Nat} {c : SC} {m : Locals} (h : SBx hp c m)
    (r : ∃ s d : BitVec 64, Lk srcN s m ∧ Lk dstN d m ∧ Sdc c s d) : SBs hp c m := by
  obtain ⟨a1, a2, a3, a4, a5, a6⟩ := h
  exact ⟨a1, a2, a3, a4, a5, a6, r⟩

theorem sbx_upd {hp : Nat} {c : SC} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h : SBx hp c m) : SBx hp c (m.update (x, v)) := by
  obtain ⟨a1, a2, a3, a4, a5, a6⟩ := h
  exact ⟨lk_updo h1 a1, lk_updo h2 a2, lk_updo h3 a3, lk_updo h4 a4, lk_updo h5 a5, mkb_upd h6 a6⟩

theorem sbx_res {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h : SBx hp c m) : SBx hp c (m.resVarEq (x, o)) := by
  obtain ⟨a1, a2, a3, a4, a5, ⟨w, hw, b1, b2, b3⟩⟩ := h
  exact ⟨lk_res h1 a1, lk_res h2 a2, lk_res h3 a3, lk_res h4 a4, lk_res h5 a5,
    w, by rw [lookup_resVarEq_ne _ _ h6]; exact hw, b1, b2, b3⟩

def SrtPre (C : Cfg) (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) (h0 : Nat) : Prop :=
  ∀ P N E : BitVec 64, argW vs 0 = some P → argW vs 1 = some N → argW vs 2 = some E →
    (N.toNat < 2 ^ 63 → N.toNat ≤ domTop ∧ N.toNat * E.toNat ≤ domTop + 64 ∧
      P.toNat + N.toNat * E.toNat ≤ scratchEnd ∧
      ∀ x, Overlap P.toNat (N.toNat * E.toNat) x → h0 ≤ x.toNat ∨ SCell C Γ x)

def T0 (hp : Nat) (c : SC) (m : Locals) : Prop :=
  SBs hp c m ∧ ∃ W : BitVec 64, Lk widthN W m ∧ 1 ≤ W.toNat ∧ W.toNat ≤ 2 ^ 41

theorem t0_res {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h : T0 hp c m) : T0 hp c (m.resVarEq (x, o)) :=
  ⟨sbs_res h1 h2 h3 h4 h5 h6 h7 h8 h.1, h.2.choose, lk_res h9 h.2.choose_spec.1, h.2.choose_spec.2⟩

theorem t0_upd {hp : Nat} {c : SC} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h : T0 hp c m) : T0 hp c (m.update (x, v)) :=
  ⟨sbs_upd h1 h2 h3 h4 h5 h6 h7 h8 h.1, h.2.choose, lk_updo h9 h.2.choose_spec.1, h.2.choose_spec.2⟩

def SrW (hp : Nat) (c : SC) (m : Locals) : Prop :=
  SBs hp c m ∧ ∃ W : BitVec 64, Lk widthN W m ∧ 1 ≤ W.toNat ∧ W.toNat < c.N.toNat

def SrI (hp : Nat) (c : SC) (m : Locals) : Prop :=
  SrW hp c m ∧ ∃ L : BitVec 64, Lk leftN L m ∧ L.toNat ≤ c.N.toNat

theorem srw_res {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h : SrW hp c m) : SrW hp c (m.resVarEq (x, o)) :=
  ⟨sbs_res h1 h2 h3 h4 h5 h6 h7 h8 h.1, h.2.choose, lk_res h9 h.2.choose_spec.1, h.2.choose_spec.2⟩

theorem sri_res {hp : Nat} {c : SC} {m : Locals} {x : MlS} {o : Option (ValueHOL 64)}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h10 : x ≠ leftN) (h : SrI hp c m) :
    SrI hp c (m.resVarEq (x, o)) :=
  ⟨srw_res h1 h2 h3 h4 h5 h6 h7 h8 h9 h.1, h.2.choose, lk_res h10 h.2.choose_spec.1, h.2.choose_spec.2⟩

theorem srw_upd {hp : Nat} {c : SC} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h : SrW hp c m) : SrW hp c (m.update (x, v)) :=
  ⟨sbs_upd h1 h2 h3 h4 h5 h6 h7 h8 h.1, h.2.choose, lk_updo h9 h.2.choose_spec.1, h.2.choose_spec.2⟩

theorem sri_upd {hp : Nat} {c : SC} {m : Locals} {x : MlS} {v : ValueHOL 64}
    (h1 : x ≠ pN) (h2 : x ≠ nN) (h3 : x ≠ eszN) (h4 : x ≠ kindN) (h5 : x ≠ auxN) (h6 : x ≠ markN)
    (h7 : x ≠ srcN) (h8 : x ≠ dstN) (h9 : x ≠ widthN) (h10 : x ≠ leftN) (h : SrI hp c m) :
    SrI hp c (m.update (x, v)) :=
  ⟨srw_upd h1 h2 h3 h4 h5 h6 h7 h8 h9 h.1, h.2.choose, lk_updo h10 h.2.choose_spec.1, h.2.choose_spec.2⟩

end InitECandidate.Solver.MemSafe.Aw
