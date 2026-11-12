import InitECandidate.Solver.MemSafe.Helpers.Divmnu
import InitECandidate.Solver.MemSafe.Helpers.SeqN

set_option autoImplicit false

/-!
# `bn_mul`: the code and the local-invariant toolkit

```
fun 1 bn_mul(1 a, 1 na, 1 b, 1 nb, 1 out) {
  var i = 0;
  while i <+ na + nb { st out + i * 8, 0; i = i + 1; }
  i = 0;
  while i <+ na {
    var ai = lds 1 (a + i * 8);  var carry = 0;  var j = 0;  var o = out + i * 8;
    while j <+ nb {
      var t = ai * (lds 1 (b + j * 8)) + (lds 1 (o + j * 8)) + carry;
      st o + j * 8, t & 4294967295;  carry = t >>> 32;  j = j + 1; }
    st o + nb * 8, carry;  i = i + 1; }
  return 0; }
```
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## The code -/

def mAdd1 (x : String) : ProgHOL 64 := .assign .local (nm x) (.op .add [lv (nm x), cw 1])

def mulL1 : ProgHOL 64 :=
  .while (.cmp .lower (lv (nm "i")) (.op .add [lv (nm "na"), lv (nm "nb")]))
    (.seq (.store (ixA "out" (lv (nm "i"))) (cw 0)) (mAdd1 "i"))

def mulTE : ExpHOL 64 :=
  .op .add [.panop .mul [lv (nm "ai"), .load .one (ixA "b" (lv (nm "j")))],
    .load .one (ixA "o" (lv (nm "j"))), lv (nm "carry")]

def mulStE : ExpHOL 64 := .op .and [lv (nm "t"), cw 4294967295]

def mulIn : ProgHOL 64 :=
  .while (ltN (nm "j") (nm "nb"))
    (.dec (nm "t") .one mulTE
      (.seq (.store (ixA "o" (lv (nm "j"))) mulStE)
        (.seq (.assign .local (nm "carry") (.shift .lsr (lv (nm "t")) (cw 32))) (mAdd1 "j"))))

def mulOutB : ProgHOL 64 :=
  .dec (nm "ai") .one (.load .one (ixA "a" (lv (nm "i"))))
    (.dec (nm "carry") .one (cw 0)
      (.dec (nm "j") .one (cw 0)
        (.dec (nm "o") .one (ixA "out" (lv (nm "i")))
          (.seq mulIn (.seq (.store (ixA "o" (lv (nm "nb"))) (lv (nm "carry"))) (mAdd1 "i"))))))

def mulOut : ProgHOL 64 := .while (ltN (nm "i") (nm "na")) mulOutB

def mulBody : ProgHOL 64 :=
  .dec (nm "i") .one (cw 0)
    (.seq mulL1 (.seq (.assign .local (nm "i") (cw 0)) (.seq mulOut (.return (cw 0)))))

def mulPs : List (MlS × ShapeHOL) :=
  [(nm "a", .one), (nm "na", .one), (nm "b", .one), (nm "nb", .one), (nm "out", .one)]

theorem entry_bn_mul : fnEntry Guest.Software.guestFn_bn_mul =
    (nm "bn_mul", mulPs, mulBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bn_mul : guestCode (nm "bn_mul") = some (mulPs, mulBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 626) (by decide)) ⟨_, rfl⟩
    entry_bn_mul

/-! ## Local-invariant toolkit -/

abbrev LkW (m : Locals) (x : String) (w : BitVec 64) : Prop :=
  m.lookup (nm x) = some (.val (.word w))

theorem LkW.upd {m : Locals} {x y : String} {w : BitVec 64} {v : ValueHOL 64} (h : LkW m x w)
    (hne : nm y ≠ nm x) : LkW (m.update (nm y, v)) x w := by
  unfold LkW at *
  rw [lookup_update_ne _ _ hne]
  exact h

theorem LkW.res {m : Locals} {x y : String} {w : BitVec 64} (old : Option (ValueHOL 64))
    (h : LkW m x w) (hne : nm y ≠ nm x) : LkW (m.resVarEq (nm y, old)) x w := by
  unfold LkW at *
  rw [lookup_resVarEq_ne _ _ hne]
  exact h

theorem LkW.self (m : Locals) (x : String) (w : BitVec 64) :
    LkW (m.update (nm x, .val (.word w))) x w := by
  unfold LkW
  exact lookup_update_self _ _ _

/-- `var x = e; body`, the invariant `K` inside, `K'` at the end implies `J'` after restoring. -/
theorem hoareG_decJ {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {J K K' J' : Locals → Prop}
    (hset : ∀ s : State σ, InCtx s X → J s.locals → ∀ v, ev s e = some v →
      K (s.locals.update (x, v)))
    (hout : ∀ (m' : Locals) old, K' m' → J' (m'.resVarEq (x, old)))
    (hb : HoareG σ X (LPre Rf s0 K) body (LN Rf s0 K')) :
    HoareG σ X (LPre Rf s0 J) (.dec x sh e body) (LN Rf s0 J') :=
  hoareG_decN (L' := fun _ => K')
    (fun s hs hJ v hv _ => hoareG_preN hb (fun m hm => hm ▸ hset s hs hJ v hv))
    (fun m m' _ hK' => hout m' _ hK')

/-- The same with a general post `LQ` (a return may follow). -/
theorem hoareG_decJQ {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {J K K' J' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hset : ∀ s : State σ, InCtx s X → J s.locals → ∀ v, ev s e = some v →
      K (s.locals.update (x, v)))
    (hout : ∀ (m' : Locals) old, K' m' → J' (m'.resVarEq (x, old)))
    (hb : HoareG σ X (LPre Rf s0 K) body (LQ Rf s0 K' Ret)) :
    HoareG σ X (LPre Rf s0 J) (.dec x sh e body) (LQ Rf s0 J' Ret) :=
  hoareG_decL (L' := fun _ => K')
    (fun s hs hJ v hv _ => hoareG_preL hb (fun m hm => hm ▸ hset s hs hJ v hv))
    (fun m m' _ hK' => hout m' _ hK')

/-- `x = x + 1` with the new value tracked. -/
theorem ev_inc {t : State σ} {x : String} {I : BitVec 64} (h : LkW t.locals x I) :
    ev t (.op .add [lv (nm x), cw 1]) = some (.val (.word (I + BitVec.ofNat 64 1))) :=
  ev_add2 (ev_lw h) (ev_cw _ 1)

theorem ev_ixA_lv {t : State σ} {b i : String} {B I : BitVec 64} (hb : LkW t.locals b B)
    (hi : LkW t.locals i I) :
    ev t (ixA b (lv (nm i))) = some (.val (.word (B + I * BitVec.ofNat 64 8))) :=
  ev_add2 (ev_lw hb) (ev_mul2 (ev_lw hi) (ev_cw _ 8))

theorem toNat_inc {I : BitVec 64} (h : I.toNat + 1 < 2 ^ 64) :
    (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc h

theorem toNat_ix8 {B I : BitVec 64} (h : B.toNat + 8 * I.toNat < 2 ^ 64) :
    (B + I * BitVec.ofNat 64 8).toNat = B.toNat + 8 * I.toNat := by
  have e8 : (I * BitVec.ofNat 64 8).toNat = I.toNat * 8 := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  rw [toNat_add2 (by rw [e8]; omega), e8]
  omega

end InitECandidate.Solver.MemSafe.Bn2
