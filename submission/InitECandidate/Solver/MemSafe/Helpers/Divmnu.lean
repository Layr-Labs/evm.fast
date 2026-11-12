import InitECandidate.Solver.MemSafe.Helpers.GlobBuf
import InitECandidate.Solver.MemSafe.Helpers.Rlp

set_option autoImplicit false

/-!
# `divmnu` (Knuth D on 32-bit digits, the `u256` workspace version)

`divmnu(q, r, u, m, v, n)` divides the `m`-digit `u` by the `n`-digit `v` (digits are 32-bit
values in 64-bit words). For `n = 1` it writes `q[0, m)` and `r[0]`; otherwise it normalises
into the workspace `un = u256_ws + 0` (`m + 1` digits) and `vn = u256_ws + 144` (`n` digits),
writes `q[0, m)` (`m - n + 1` quotient digits, the rest zero) and `r[0, n)`.

The body is rendered mechanically from the guest AST in named blocks (`dv*`), certified by
`cbv` (`code_divmnu`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `b + ie * 8` -/
def ixA (b : String) (ie : ExpHOL 64) : ExpHOL 64 := .op .add [lv (nm b), .panop .mul [ie, cw 8]]

def dvP1 : ProgHOL 64 :=
  (.dec (nm "d") .one (.load .one (lv (nm "v"))) (.dec (nm "k") .one (cw 0) (.seq (.assign .local (nm "j") (lv (nm "m"))) (.seq (.while (.cmp .lower (cw 0) (lv (nm "j"))) (.seq (.assign .local (nm "j") (.op .sub [(lv (nm "j")), (cw 1)])) (.decCall (nm "qr") (.comb [.one, .one]) (nm "div64by32") [(lv (nm "k")), (.load .one (ixA "u" (lv (nm "j")))), (lv (nm "d"))] (.seq (.store (ixA "q" (lv (nm "j"))) (.rfield 0 (lv (nm "qr")))) (.assign .local (nm "k") (.rfield 1 (lv (nm "qr")))))))) (.seq (.store (lv (nm "r")) (lv (nm "k"))) (.return (cw 0)))))))

def dvL1 : ProgHOL 64 :=
  (.while (.cmp .lower (cw 0) (lv (nm "i"))) (.seq (.store (ixA "vn" (lv (nm "i"))) (.op .and [(.op .or [(.shift .lsl (.load .one (ixA "v" (lv (nm "i")))) (lv (nm "s"))), (.shift .lsr (.load .one (ixA "v" (.op .sub [(lv (nm "i")), (cw 1)]))) (.op .sub [(cw 32), (lv (nm "s"))]))]), (cw 4294967295)])) (.assign .local (nm "i") (.op .sub [(lv (nm "i")), (cw 1)]))))

def dvSt1 : ProgHOL 64 :=
  (.store (lv (nm "vn")) (.op .and [(.shift .lsl (.load .one (lv (nm "v"))) (lv (nm "s"))), (cw 4294967295)]))

def dvSt2 : ProgHOL 64 :=
  (.store (ixA "un" (lv (nm "m"))) (.shift .lsr (.load .one (ixA "u" (.op .sub [(lv (nm "m")), (cw 1)]))) (.op .sub [(cw 32), (lv (nm "s"))])))

def dvL2 : ProgHOL 64 :=
  (.while (.cmp .lower (cw 0) (lv (nm "i"))) (.seq (.store (ixA "un" (lv (nm "i"))) (.op .and [(.op .or [(.shift .lsl (.load .one (ixA "u" (lv (nm "i")))) (lv (nm "s"))), (.shift .lsr (.load .one (ixA "u" (.op .sub [(lv (nm "i")), (cw 1)]))) (.op .sub [(cw 32), (lv (nm "s"))]))]), (cw 4294967295)])) (.assign .local (nm "i") (.op .sub [(lv (nm "i")), (cw 1)]))))

def dvSt3 : ProgHOL 64 :=
  (.store (lv (nm "un")) (.op .and [(.shift .lsl (.load .one (lv (nm "u"))) (lv (nm "s"))), (cw 4294967295)]))

def dvQR : ProgHOL 64 :=
  (.ite (.cmp .notLower (lv (nm "ujn")) (lv (nm "vtop"))) (.seq (.assign .local (nm "qhat") (cw 4294967295)) (.assign .local (nm "rhat") (.op .sub [(.op .or [(.shift .lsl (lv (nm "ujn")) (cw 32)), (lv (nm "ujn1"))]), (.panop .mul [(lv (nm "qhat")), (lv (nm "vtop"))])]))) (.decCall (nm "qr") (.comb [.one, .one]) (nm "div64by32") [(lv (nm "ujn")), (lv (nm "ujn1")), (lv (nm "vtop"))] (.seq (.assign .local (nm "qhat") (.rfield 0 (lv (nm "qr")))) (.assign .local (nm "rhat") (.rfield 1 (lv (nm "qr")))))))

def dvAgain : ProgHOL 64 :=
  (.while (.cmp .equal (lv (nm "again")) (cw 1)) (.seq (.assign .local (nm "again") (cw 0)) (.ite (.cmp .lower (lv (nm "rhat")) (cw 4294967296)) (.ite (.cmp .lower (.op .or [(.shift .lsl (lv (nm "rhat")) (cw 32)), (lv (nm "ujn2"))]) (.panop .mul [(lv (nm "qhat")), (lv (nm "vsec"))])) (.seq (.assign .local (nm "qhat") (.op .sub [(lv (nm "qhat")), (cw 1)])) (.seq (.assign .local (nm "rhat") (.op .add [(lv (nm "rhat")), (lv (nm "vtop"))])) (.assign .local (nm "again") (cw 1)))) .skip) .skip)))

def dvL3a : ProgHOL 64 :=
  (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) (.dec (nm "p") .one (.panop .mul [(lv (nm "qhat")), (.load .one (ixA "vn" (lv (nm "i"))))]) (.dec (nm "t") .one (.op .sub [(.op .sub [(.load .one (ixA "un" (.op .add [(lv (nm "i")), (lv (nm "j"))]))), (lv (nm "k"))]), (.op .and [(lv (nm "p")), (cw 4294967295)])]) (.seq (.store (ixA "un" (.op .add [(lv (nm "i")), (lv (nm "j"))])) (.op .and [(lv (nm "t")), (cw 4294967295)])) (.seq (.assign .local (nm "k") (.op .sub [(.shift .lsr (lv (nm "p")) (cw 32)), (.shift .asr (lv (nm "t")) (cw 32))])) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)])))))))

def dvL3b : ProgHOL 64 :=
  (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) (.dec (nm "t2") .one (.op .add [(.load .one (ixA "un" (.op .add [(lv (nm "i")), (lv (nm "j"))]))), (.load .one (ixA "vn" (lv (nm "i")))), (lv (nm "k"))]) (.seq (.store (ixA "un" (.op .add [(lv (nm "i")), (lv (nm "j"))])) (.op .and [(lv (nm "t2")), (cw 4294967295)])) (.seq (.assign .local (nm "k") (.shift .lsr (lv (nm "t2")) (cw 32))) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)]))))))

def dvTnegSt : ProgHOL 64 :=
  (.store (ixA "un" (.op .add [(lv (nm "j")), (lv (nm "n"))])) (.op .and [(.op .add [(lv (nm "tt")), (lv (nm "k"))]), (cw 4294967295)]))

def dvTpos : ProgHOL 64 :=
  (.seq (.store (ixA "q" (lv (nm "j"))) (lv (nm "qhat"))) (.store (ixA "un" (.op .add [(lv (nm "j")), (lv (nm "n"))])) (lv (nm "tt"))))

def dvL4 : ProgHOL 64 :=
  (.while (.cmp .lower (lv (nm "j")) (lv (nm "m"))) (.seq (.store (ixA "q" (lv (nm "j"))) (cw 0)) (.assign .local (nm "j") (.op .add [(lv (nm "j")), (cw 1)]))))

def dvL5 : ProgHOL 64 :=
  (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) (.seq (.store (ixA "r" (lv (nm "i"))) (.op .or [(.shift .lsr (.load .one (ixA "un" (lv (nm "i")))) (lv (nm "s"))), (.op .and [(.shift .lsl (.load .one (ixA "un" (.op .add [(lv (nm "i")), (cw 1)]))) (.op .sub [(cw 32), (lv (nm "s"))])), (cw 4294967295)])])) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)]))))

def dvTneg : ProgHOL 64 :=
  (.seq (.store (ixA "q" (lv (nm "j"))) (.op .sub [(lv (nm "qhat")), (cw 1)])) (.seq (.assign .local (nm "k") (cw 0)) (.seq (.assign .local (nm "i") (cw 0)) (.seq dvL3b dvTnegSt))))

def dvInner : ProgHOL 64 :=
  (.dec (nm "k") .one (cw 0) (.seq (.assign .local (nm "i") (cw 0)) (.seq dvL3a (.dec (nm "tt") .one (.op .sub [(lv (nm "ujn")), (lv (nm "k"))]) (.ite (.cmp .less (lv (nm "tt")) (cw 0)) dvTneg dvTpos)))))

def dvBody3 : ProgHOL 64 :=
  (.seq (.assign .local (nm "j") (.op .sub [(lv (nm "j")), (cw 1)])) (.dec (nm "ujn") .one (.load .one (ixA "un" (.op .add [(lv (nm "j")), (lv (nm "n"))]))) (.dec (nm "ujn1") .one (.load .one (ixA "un" (.op .sub [(.op .add [(lv (nm "j")), (lv (nm "n"))]), (cw 1)]))) (.dec (nm "ujn2") .one (.load .one (ixA "un" (.op .sub [(.op .add [(lv (nm "j")), (lv (nm "n"))]), (cw 2)]))) (.dec (nm "qhat") .one (cw 0) (.dec (nm "rhat") .one (cw 0) (.seq dvQR (.dec (nm "again") .one (cw 1) (.seq dvAgain dvInner)))))))))

def dvL3 : ProgHOL 64 :=
  (.while (.cmp .lower (cw 0) (lv (nm "j"))) dvBody3)

def dvK : ProgHOL 64 :=
  (.seq (.assign .local (nm "i") (.op .sub [(lv (nm "n")), (cw 1)])) (.seq dvL1 (.seq dvSt1 (.seq dvSt2 (.seq (.assign .local (nm "i") (.op .sub [(lv (nm "m")), (cw 1)])) (.seq dvL2 (.seq dvSt3 (.dec (nm "vtop") .one (.load .one (ixA "vn" (.op .sub [(lv (nm "n")), (cw 1)]))) (.dec (nm "vsec") .one (.load .one (ixA "vn" (.op .sub [(lv (nm "n")), (cw 2)]))) (.seq (.assign .local (nm "j") (.op .add [(.op .sub [(lv (nm "m")), (lv (nm "n"))]), (cw 1)])) (.seq dvL3 (.seq (.assign .local (nm "j") (.op .add [(.op .sub [(lv (nm "m")), (lv (nm "n"))]), (cw 1)])) (.seq dvL4 (.seq (.assign .local (nm "i") (cw 0)) (.seq dvL5 (.return (cw 0)))))))))))))))))

def divBody : ProgHOL 64 :=
  (.dec (nm "i") .one (cw 0) (.dec (nm "j") .one (cw 0) (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 1)) dvP1 .skip) (.dec (nm "un") .one (.op .add [(.var .global (nm "u256_ws")), (cw 0)]) (.dec (nm "vn") .one (.op .add [(.var .global (nm "u256_ws")), (cw 144)]) (.decCall (nm "s") .one (nm "nlz32") [(.load .one (ixA "v" (.op .sub [(lv (nm "n")), (cw 1)])))] dvK))))))

def divParams : List (MlS × ShapeHOL) :=
  [(nm "q", .one), (nm "r", .one), (nm "u", .one), (nm "m", .one), (nm "v", .one), (nm "n", .one)]

theorem entry_divmnu : fnEntry Guest.Software.guestFn_divmnu =
    (nm "divmnu", divParams, divBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_divmnu : guestCode (nm "divmnu") = some (divParams, divBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 67) (by decide)) ⟨_, rfl⟩
    entry_divmnu

/-! ## Indexed word stores -/

theorem oneWordL_op {L : Locals → Prop} (o : BinOp) (es : List (ExpHOL 64)) :
    OneWordL (σ := σ) L (.op o es) := by
  intro t _ v hv
  obtain ⟨w, rfl⟩ := ev_op_word hv
  exact ⟨_, by rw [flattenHOL]⟩

theorem oneWordL_shift {L : Locals → Prop} (o : Shift) (a b : ExpHOL 64) :
    OneWordL (σ := σ) L (.shift o a b) := by
  intro t _ v hv
  obtain ⟨w, rfl⟩ := ev_shift_word hv
  exact ⟨_, by rw [flattenHOL]⟩

theorem oneWordL_cw' {L : Locals → Prop} (k : Nat) : OneWordL (σ := σ) L (cw k) :=
  oneWordL_of (oneWord_cw k)

/-- The address `b + ie * 8` evaluates to `B + x * 8` for the index value `x`. -/
theorem ev_ixA_inv {t : State σ} {b : String} {ie : ExpHOL 64} {B w : BitVec 64}
    (hb : t.locals.lookup (nm b) = some (.val (.word B)))
    (h : ev t (ixA b ie) = some (.val (.word w))) :
    ∃ x : BitVec 64, ev t ie = some (.val (.word x)) ∧ w = B + x * BitVec.ofNat 64 8 := by
  obtain ⟨x1, y1, h1, h2, h3⟩ := Spec.Inv.ev_add2_inv h
  rw [ev_lw hb] at h1
  cases h1
  obtain ⟨x, y, hx, hy, hxy⟩ := Spec.Inv.ev_mul2_inv h2
  rw [ev_cw] at hy
  cases hy
  cases hxy
  exact ⟨x, hx, by cases h3; rfl⟩

/-- A word store at `b + ie * 8` inside the buffer `[B, B + nb)`. -/
theorem hoareG_stIxN (hA : AlignedDom X) {b : String} {ie e : ExpHOL 64} {B : BitVec 64}
    {nb : Nat} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    (hLb : ∀ m, L m → m.lookup (nm b) = some (.val (.word B)))
    (hix : ∀ t : State σ, L t.locals → ∀ x : BitVec 64, ev t ie = some (.val (.word x)) →
      x.toNat * 8 + 8 ≤ nb)
    (hB : B.toNat + nb < 2 ^ 64) (hR : ∀ a, Overlap B.toNat nb a → Rf a)
    (he : OneWordL (σ := σ) L e) :
    HoareG σ X (LPre Rf s0 L) (.store (ixA b ie) e) (LN Rf s0 L) := by
  refine hoareG_store fun t hs hpre w v mem ha hv hst => ?_
  obtain ⟨y, hy⟩ := he t hpre.1 v hv
  rw [hy] at hst
  obtain ⟨hm, hdom⟩ := store1_mod hst
  have hal : w.toNat % 8 = 0 := hA w (hs.2.1 ▸ hdom)
  obtain ⟨x, hx, rfl⟩ := ev_ixA_inv (hLb _ hpre.1) ha
  have hb8 := hix t hpre.1 x hx
  have e8 : (x * BitVec.ofNat 64 8).toNat = x.toNat * 8 := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  have ew := toNat_add2 (D := B) (I := x * BitVec.ofNat 64 8) (by rw [e8]; omega)
  rw [e8] at ew
  have hov : Overlap B.toNat nb (B + x * BitVec.ofNat 64 8) :=
    overlap_word hal (by rw [ew]; omega) (by rw [ew]; omega)
  exact ⟨rfl, hpre.1, hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ha' ▸ hR _ hov)⟩

/-- A word store at `b` inside the buffer `[B, B + nb)`, `8 ≤ nb`. -/
theorem hoareG_st0N (hA : AlignedDom X) {b : String} {e : ExpHOL 64} {B : BitVec 64}
    {nb : Nat} {Rf : BitVec 64 → Prop} {s0 : State σ} {L : Locals → Prop}
    (hLb : ∀ m, L m → m.lookup (nm b) = some (.val (.word B))) (h8 : 8 ≤ nb)
    (hB : B.toNat + nb < 2 ^ 64) (hR : ∀ a, Overlap B.toNat nb a → Rf a)
    (he : OneWordL (σ := σ) L e) :
    HoareG σ X (LPre Rf s0 L) (.store (lv (nm b)) e) (LN Rf s0 L) := by
  refine hoareG_store fun t hs hpre w v mem ha hv hst => ?_
  obtain ⟨y, hy⟩ := he t hpre.1 v hv
  rw [hy] at hst
  obtain ⟨hm, hdom⟩ := store1_mod hst
  have hal : w.toNat % 8 = 0 := hA w (hs.2.1 ▸ hdom)
  rw [ev_lw (hLb _ hpre.1)] at ha
  cases ha
  have hov : Overlap B.toNat nb B := overlap_word hal (by omega) (by omega)
  exact ⟨rfl, hpre.1, hpre.2.1, hpre.2.2.trans (hm.mono fun a ha' => ha' ▸ hR _ hov)⟩

/-- LN implies LQ. -/
theorem hoareG_NQ {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : HoareG σ X (LPre Rf s0 L) p (LN Rf s0 L')) :
    HoareG σ X (LPre Rf s0 L) p (LQ Rf s0 L' Ret) :=
  hoareG_conseq h (fun _ _ h => h) fun r t _ _ ⟨hr, hL, hbw⟩ =>
    ⟨hbw, fun _ => hL, fun v hv => by subst hr; cases hv⟩

/-! ## The invariants -/

/-- The fixed locals of the `n ≥ 2` part. -/
def DvK (Q Rr M N W V : BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "q") = some (.val (.word Q)) ∧ m.lookup (nm "r") = some (.val (.word Rr)) ∧
    m.lookup (nm "m") = some (.val (.word M)) ∧ m.lookup (nm "n") = some (.val (.word N)) ∧
    m.lookup (nm "un") = some (.val (.word W)) ∧ m.lookup (nm "vn") = some (.val (.word V))

def dvW : List MlS := [nm "q", nm "r", nm "m", nm "n", nm "un", nm "vn"]

theorem dvK_dep {Q Rr M N W V : BitVec 64} {m m' : Locals}
    (h : ∀ x ∈ dvW, m'.lookup x = m.lookup x) (hK : DvK Q Rr M N W V m) : DvK Q Rr M N W V m' := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := hK
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> rw [h _ (by simp [dvW])] <;> assumption

/-- The footprint. -/
def DvR (Q Rr M N W V : BitVec 64) (a : BitVec 64) : Prop :=
  Overlap Q.toNat (8 * M.toNat) a ∨ Overlap Rr.toNat (8 * N.toNat) a ∨
    Overlap W.toNat (8 * (M.toNat + 1)) a ∨ Overlap V.toNat (8 * N.toNat) a

/-- The bounds of the `n ≥ 2` part. -/
structure DvB (Q Rr M N W V : BitVec 64) : Prop where
  n2 : 2 ≤ N.toNat
  nm : N.toNat ≤ M.toNat
  w : W.toNat + 8 * (M.toNat + 1) ≤ scratchEnd
  v : V.toNat + 8 * N.toNat ≤ scratchEnd
  q : Q.toNat + 8 * M.toNat ≤ scratchEnd
  r : Rr.toNat + 8 * N.toNat ≤ scratchEnd

theorem lk_upd {m : Locals} {x y : MlS} (v : ValueHOL 64) (h : x ≠ y) :
    (m.update (x, v)).lookup y = m.lookup y := lookup_update_ne _ _ h

/-- The fixed locals survive an update of a name outside `dvW`. -/
theorem dvK_upd {Q Rr M N W V : BitVec 64} {m : Locals} {x : MlS} (v : ValueHOL 64)
    (hx : dvW.contains x = false) (h : DvK Q Rr M N W V m) : DvK Q Rr M N W V (m.update (x, v)) :=
  dvK_dep (fun y hy => lookup_update_ne _ _ (fun e => by
    subst e; rw [List.contains_iff_mem.mpr hy] at hx; cases hx)) h

theorem toNat_sub1 {I : BitVec 64} (h : 1 ≤ I.toNat) : (I - BitVec.ofNat 64 1).toNat = I.toNat - 1 :=
  toNat_subc h

theorem toNat_add1 {I : BitVec 64} (h : I.toNat + 1 < 2 ^ 64) :
    (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_addc h

/-! ## The simple loops -/

/-- A down-counting store loop `while 0 < i { st b + i * 8, e; i = i - 1 }` with `i ≤ top`
into `[B, B + 8 (top + 1))`. -/
theorem hoareG_downLoop (hA : AlignedDom X) {b : String} {e : ExpHOL 64}
    {Q Rr M N W V B : BitVec 64} {top : Nat} {Rf : BitVec 64 → Prop} {s0 : State σ}
    (hb : ∀ m, DvK Q Rr M N W V m → m.lookup (nm b) = some (.val (.word B)))
    (hB : B.toNat + 8 * (top + 1) < 2 ^ 64) (hR : ∀ a, Overlap B.toNat (8 * (top + 1)) a → Rf a)
    (he : ∀ L : Locals → Prop, OneWordL (σ := σ) L e) :
    HoareG σ X (LPre Rf s0 (fun m => DvK Q Rr M N W V m ∧ ∃ I : BitVec 64,
        m.lookup iN = some (.val (.word I)) ∧ I.toNat ≤ top))
      (.while (.cmp .lower (cw 0) (lv iN))
        (.seq (.store (ixA b (lv iN)) e) (.assign .local iN (.op .sub [lv iN, cw 1]))))
      (LN Rf s0 (fun m => DvK Q Rr M N W V m ∧ ∃ I : BitVec 64,
        m.lookup iN = some (.val (.word I)) ∧ I.toNat ≤ top)) := by
  refine hoareG_whileNN ?_
  intro t ht ⟨hpre, hc⟩ hg
  obtain ⟨⟨hK, I, hi, hIt⟩, hbw⟩ := hpre
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_cw] at hx
  cases hx
  rw [ev_lw hi] at hy
  cases hy
  have hI0 := lower_true hxy
  simp only [BitVec.toNat_ofNat, Nat.zero_mod] at hI0
  refine hoareG_seqN (L1 := fun m => DvK Q Rr M N W V m ∧ m.lookup iN = some (.val (.word I)))
    (L2 := fun m => DvK Q Rr M N W V m ∧ m.lookup iN = some (.val (.word I)))
    ?_ ?_ t ht ⟨⟨hK, hi⟩, hbw⟩ hg
  · refine hoareG_stIxN hA (fun m h => hb m h.1) (fun t' hL x hx => ?_) hB hR (he _)
    rw [ev_lw hL.2] at hx
    cases hx
    omega
  · refine hoareG_assignN fun t' _ ⟨hK', hi'⟩ v hv => ?_
    rw [ev_sub2 (ev_lw hi') (ev_cw _ 1)] at hv
    cases hv
    refine ⟨dvK_upd _ (by decide) hK', _, lookup_update_self _ _ _, ?_⟩
    rw [toNat_sub1 (by omega)]
    omega

/-- An up-counting store loop `while i < bnd { st b + i * 8, e; i = i + 1 }` into
`[B, B + 8 nbd)`, where `bnd` holds `Nb` with `Nb ≤ nbd`. -/
theorem hoareG_upLoop (hA : AlignedDom X) {b ibnd : String} {i : MlS} {e : ExpHOL 64}
    {Q Rr M N W V B Nb : BitVec 64} {nbd : Nat} {Rf : BitVec 64 → Prop} {s0 : State σ}
    (hb : ∀ m, DvK Q Rr M N W V m → m.lookup (nm b) = some (.val (.word B)))
    (hbd : ∀ m, DvK Q Rr M N W V m → m.lookup (nm ibnd) = some (.val (.word Nb)))
    (hNb : Nb.toNat ≤ nbd) (hi : dvW.contains i = false) (hix : i = nm b → False)
    (hB : B.toNat + 8 * nbd < 2 ^ 64) (hR : ∀ a, Overlap B.toNat (8 * nbd) a → Rf a)
    (he : ∀ L : Locals → Prop, OneWordL (σ := σ) L e) :
    HoareG σ X (LPre Rf s0 (DvK Q Rr M N W V))
      (.while (.cmp .lower (lv i) (lv (nm ibnd)))
        (.seq (.store (ixA b (lv i)) e) (.assign .local i (.op .add [lv i, cw 1]))))
      (LN Rf s0 (DvK Q Rr M N W V)) := by
  refine hoareG_whileNN ?_
  intro t ht ⟨hpre, hc⟩ hg
  obtain ⟨hK, hbw⟩ := hpre
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw (hbd _ hK)] at hy
  cases hy
  have hI := lower_true hxy
  have hxi : t.locals.lookup i = some (.val (.word x)) := hx
  refine hoareG_seqN (L1 := fun m => DvK Q Rr M N W V m ∧ m.lookup i = some (.val (.word x)))
    (L2 := fun m => DvK Q Rr M N W V m ∧ m.lookup i = some (.val (.word x)))
    ?_ ?_ t ht ⟨⟨hK, hxi⟩, hbw⟩ hg
  · refine hoareG_stIxN hA (fun m h => hb m h.1) (fun t' hL x' hx' => ?_) hB hR (he _)
    rw [ev_lw hL.2] at hx'
    cases hx'
    omega
  · exact hoareG_assignN fun t' _ ⟨hK', _⟩ v _ => dvK_upd _ hi hK'

/-! ## Locals invariants that depend on a few names -/

/-- `J` depends only on the lookups of the names in `S`. -/
def Dep (S : List MlS) (J : Locals → Prop) : Prop :=
  ∀ m m' : Locals, (∀ x ∈ S, m'.lookup x = m.lookup x) → J m → J m'

theorem Dep.upd {S : List MlS} {J : Locals → Prop} (h : Dep S J) {m : Locals} {x : MlS}
    (hx : x ∉ S) (v : ValueHOL 64) (hJ : J m) : J (m.update (x, v)) :=
  h m _ (fun y hy => lookup_update_ne _ _ (fun e => hx (e ▸ hy))) hJ

theorem Dep.res {S : List MlS} {J : Locals → Prop} (h : Dep S J) {m : Locals} {x : MlS}
    (hx : x ∉ S) (old : Option (ValueHOL 64)) (hJ : J m) : J (m.resVarEq (x, old)) :=
  h m _ (fun y hy => lookup_resVarEq_ne _ _ (fun e => hx (e ▸ hy))) hJ

theorem Dep.stable {S : List MlS} {J : Locals → Prop} (h : Dep S J) : Stable S J :=
  stable_of_dep h

theorem dep_and {S : List MlS} {J J' : Locals → Prop} (h : Dep S J) (h' : Dep S J') :
    Dep S (fun m => J m ∧ J' m) := fun m m' he hJ => ⟨h m m' he hJ.1, h' m m' he hJ.2⟩

theorem dep_lk {S : List MlS} {x : MlS} (hx : x ∈ S) (v : ValueHOL 64) :
    Dep S (fun m => m.lookup x = some v) := fun m m' he h => by
  show m'.lookup x = some v
  rw [he x hx]; exact h

theorem dep_ex {S : List MlS} {x : MlS} (hx : x ∈ S) (φ : BitVec 64 → Prop) :
    Dep S (fun m => ∃ I : BitVec 64, m.lookup x = some (.val (.word I)) ∧ φ I) :=
  fun m m' he ⟨I, h1, h2⟩ => ⟨I, by rw [he x hx]; exact h1, h2⟩

theorem dep_words {S Wd : List MlS} (hW : ∀ x ∈ Wd, x ∈ S) : Dep S (Words Wd) :=
  fun _ _ he h x hx => by rw [he x (hW x hx)]; exact h x hx

theorem dep_dvK {S : List MlS} (hS : ∀ x ∈ dvW, x ∈ S) {Q Rr M N W V : BitVec 64} :
    Dep S (DvK Q Rr M N W V) := fun m m' he h => dvK_dep (fun x hx => he x (hS x hx)) h

/-- Every name of the main loop body that the invariants read. -/
def dvS3 : List MlS := [nm "q", nm "r", nm "m", nm "n", nm "un", nm "vn", nm "j", nm "i",
  nm "qhat", nm "tt"]

theorem dvW_sub3 : ∀ x ∈ dvW, x ∈ dvS3 := by decide

theorem ev_add_lk {t : State σ} {a b : MlS} {A B : BitVec 64}
    (ha : t.locals.lookup a = some (.val (.word A))) (hb : t.locals.lookup b = some (.val (.word B)))
    (h : A.toNat + B.toNat < 2 ^ 64) {x : BitVec 64}
    (hx : ev t (.op .add [lv a, lv b]) = some (.val (.word x))) : x.toNat = A.toNat + B.toNat := by
  rw [ev_add2 (ev_lw ha) (ev_lw hb)] at hx
  cases hx
  exact toNat_add2 h

/-! ## The quotient step -/

def dvSj : List MlS := dvW ++ [nm "j"]

theorem dvW_subj : ∀ x ∈ dvW, x ∈ dvSj := by decide

/-- Inside one quotient step: fixed locals, `j = Jm`. -/
def DvJb (Q Rr M N W V Jm : BitVec 64) (m : Locals) : Prop :=
  DvK Q Rr M N W V m ∧ m.lookup (nm "j") = some (.val (.word Jm))

theorem dep_dvJb {Q Rr M N W V Jm : BitVec 64} : Dep dvSj (DvJb Q Rr M N W V Jm) :=
  dep_and (dep_dvK dvW_subj) (dep_lk (by decide) _)

/-- The digit loops of one step: `i ≤ N`, `qhat` a word. -/
def DvI (Q Rr M N W V Jm : BitVec 64) (m : Locals) : Prop :=
  DvJb Q Rr M N W V Jm m ∧ Words [nm "qhat"] m ∧
    ∃ I : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat

def dvSi : List MlS := dvSj ++ [nm "qhat", nm "i"]

theorem dep_dvI {Q Rr M N W V Jm : BitVec 64} : Dep dvSi (DvI Q Rr M N W V Jm) :=
  dep_and (fun m m' he h => dep_dvJb m m' (fun x hx => he x (by
    simp only [dvSi, List.mem_append]; exact Or.inl hx)) h)
    (dep_and (dep_words (by decide)) (dep_ex (by decide) _))

theorem dvR_w {Q Rr M N W V : BitVec 64} {a : BitVec 64}
    (h : Overlap W.toNat (8 * (M.toNat + 1)) a) : DvR Q Rr M N W V a := Or.inr (Or.inr (Or.inl h))

theorem dvR_v {Q Rr M N W V : BitVec 64} {a : BitVec 64} (h : Overlap V.toNat (8 * N.toNat) a) :
    DvR Q Rr M N W V a := Or.inr (Or.inr (Or.inr h))

theorem dvR_q {Q Rr M N W V : BitVec 64} {a : BitVec 64} (h : Overlap Q.toNat (8 * M.toNat) a) :
    DvR Q Rr M N W V a := Or.inl h

theorem dvR_r {Q Rr M N W V : BitVec 64} {a : BitVec 64} (h : Overlap Rr.toNat (8 * N.toNat) a) :
    DvR Q Rr M N W V a := Or.inr (Or.inl h)

/-- The store-then-carry core of the digit loops. -/
theorem hoareG_dvCore (hA : AlignedDom X) {Q Rr M N W V Jm I : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) (hI : I.toNat < N.toNat) {s0 : State σ} {e ek : ExpHOL 64} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (fun m => DvJb Q Rr M N W V Jm m ∧
        Words [nm "qhat"] m ∧ m.lookup (nm "i") = some (.val (.word I))))
      (.seq (.store (ixA "un" (.op .add [lv (nm "i"), lv (nm "j")])) (.op .and [e, cw 4294967295]))
        (.seq (.assign .local (nm "k") ek) (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))
      (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have hnm := hB.nm
  have hw := hB.w
  let Lc : Locals → Prop := fun m => DvJb Q Rr M N W V Jm m ∧
    Words [nm "qhat"] m ∧ m.lookup (nm "i") = some (.val (.word I))
  refine hoareG_seqN (L2 := Lc) ?_ (hoareG_seqN (L1 := Lc) (L2 := Lc) ?_ ?_)
  · refine hoareG_stIxN (B := W) (nb := 8 * (M.toNat + 1)) hA (fun m h => h.1.1.2.2.2.2.1)
      (fun t hL x hx => ?_) (by omega) (fun a h => dvR_w h) (oneWordL_op _ _)
    have := ev_add_lk hL.2.2 hL.1.2 (by omega) hx
    omega
  · refine hoareG_assignN fun t _ ⟨hJb, hW, hi⟩ v _ => ?_
    exact ⟨dep_dvJb.upd (by decide) v hJb, (dep_words (S := [nm "qhat"]) (by decide)).upd
      (by decide) v hW, by rw [lookup_update_ne _ _ (by decide)]; exact hi⟩
  · refine hoareG_assignN fun t _ ⟨hJb, hW, hi⟩ v hv => ?_
    rw [ev_add2 (ev_lw hi) (ev_cw _ 1)] at hv
    cases hv
    refine ⟨dep_dvJb.upd (by decide) _ hJb, (dep_words (S := [nm "qhat"]) (by decide)).upd
      (by decide) _ hW, _, lookup_update_self _ _ _, ?_⟩
    rw [toNat_add1 (by omega)]
    omega

/-- One digit-loop iteration's locals: `i = I` fixed. -/
def DvLc (Q Rr M N W V Jm I : BitVec 64) (m : Locals) : Prop :=
  DvJb Q Rr M N W V Jm m ∧ Words [nm "qhat"] m ∧ m.lookup (nm "i") = some (.val (.word I))

theorem dep_dvLc {Q Rr M N W V Jm I : BitVec 64} : Dep dvSi (DvLc Q Rr M N W V Jm I) :=
  dep_and (fun m m' he h => dep_dvJb m m' (fun x hx => he x (by
    simp only [dvSi, List.mem_append]; exact Or.inl hx)) h)
    (dep_and (dep_words (by decide)) (dep_lk (by decide) _))

/-- A digit loop `while i < n { var ...; store un + (i + j) * 8; k = ...; i = i + 1 }`, whose
`var` prefix (`pre`) only declares names outside `dvSi`. -/
theorem hoareG_dvDigits (hA : AlignedDom X) {Q Rr M N W V Jm : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) {s0 : State σ} {body : ProgHOL 64}
    (hbody : ∀ I : BitVec 64, I.toNat < N.toNat →
      HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvLc Q Rr M N W V Jm I)) body
        (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm))) :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm))
      (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) body)
      (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) := by
  refine hoareG_whileNN ?_
  intro t ht ⟨⟨hI, hbw⟩, hc⟩ hg
  obtain ⟨hJb, hW, I, hi, -⟩ := hI
  have hlt := ltN_true (n := nN) (i := iN) hJb.1.2.2.2.1 hi hc
  exact hbody I hlt t ht ⟨⟨hJb, hW, hi⟩, hbw⟩ hg

/-- A `var x = e` inside a digit-loop iteration, `x ∉ dvSi`. -/
theorem hoareG_dvDec {Q Rr M N W V Jm I : BitVec 64} {s0 : State σ} {x : MlS} {e : ExpHOL 64}
    {k : ProgHOL 64} (hx : x ∉ dvSi)
    (hk : HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvLc Q Rr M N W V Jm I)) k
      (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm))) :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvLc Q Rr M N W V Jm I)) (.dec x .one e k)
      (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) :=
  hoareG_decN (L' := fun _ => DvI Q Rr M N W V Jm)
    (fun _ _ hL v _ _ => hoareG_preN hk fun m hm => hm ▸ dep_dvLc.upd hx v hL)
    (fun _ m' _ h => dep_dvI.res hx _ h)

theorem hoareG_dvL3a (hA : AlignedDom X) {Q Rr M N W V Jm : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) dvL3a
      (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) :=
  hoareG_dvDigits hA hB hJm fun _ hI =>
    hoareG_dvDec (by decide) (hoareG_dvDec (by decide) (hoareG_dvCore hA hB hJm hI))

theorem hoareG_dvL3b (hA : AlignedDom X) {Q Rr M N W V Jm : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) dvL3b
      (LN (DvR Q Rr M N W V) s0 (DvI Q Rr M N W V Jm)) :=
  hoareG_dvDigits hA hB hJm fun _ hI => hoareG_dvDec (by decide) (hoareG_dvCore hA hB hJm hI)

/-- After `var tt`: `qhat` and `tt` are words. -/
def DvT (Q Rr M N W V Jm : BitVec 64) (m : Locals) : Prop :=
  DvJb Q Rr M N W V Jm m ∧ Words [nm "qhat", nm "tt"] m

theorem dvJb_weaken {Q Rr M N W V Jm : BitVec 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L : Locals → Prop} {p : ProgHOL 64} (hL : ∀ m, L m → DvJb Q Rr M N W V Jm m)
    (h : HoareG σ X (LPre Rf s0 L) p (LN Rf s0 L)) :
    HoareG σ X (LPre Rf s0 L) p (LN Rf s0 (DvJb Q Rr M N W V Jm)) :=
  hoareG_conseq h (fun _ _ h => h) fun _ _ _ _ ⟨hr, hl, hbw⟩ => ⟨hr, hL _ hl, hbw⟩

theorem hoareG_dvTpos (hA : AlignedDom X) {Q Rr M N W V Jm : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvT Q Rr M N W V Jm)) dvTpos
      (LN (DvR Q Rr M N W V) s0 (DvJb Q Rr M N W V Jm)) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have := hB.n2; have := hB.nm; have := hB.w; have := hB.q
  unfold dvTpos
  refine dvJb_weaken (fun m h => h.1) (hoareG_seqN (L2 := DvT Q Rr M N W V Jm) ?_ ?_)
  · refine hoareG_stIxN (B := Q) (nb := 8 * M.toNat) hA (fun m h => h.1.1.1)
      (fun t hL x hx => ?_) (by omega) (fun a h => dvR_q h)
      (oneWordL_lv fun m h => h.2 _ (by simp))
    rw [ev_lw hL.1.2] at hx
    cases hx
    omega
  · refine hoareG_stIxN (B := W) (nb := 8 * (M.toNat + 1)) hA (fun m h => h.1.1.2.2.2.2.1)
      (fun t hL x hx => ?_) (by omega) (fun a h => dvR_w h)
      (oneWordL_lv fun m h => h.2 _ (by simp))
    have := ev_add_lk hL.1.2 hL.1.1.2.2.2.1 (by omega) hx
    omega

theorem hoareG_dvTneg (hA : AlignedDom X) {Q Rr M N W V Jm : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvT Q Rr M N W V Jm)) dvTneg
      (LN (DvR Q Rr M N W V) s0 (DvJb Q Rr M N W V Jm)) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have := hB.n2; have := hB.nm; have := hB.w; have := hB.q
  unfold dvTneg
  refine hoareG_seqN (L2 := DvT Q Rr M N W V Jm) ?_ (hoareG_seqN (L2 := DvT Q Rr M N W V Jm) ?_
    (hoareG_seqN (L2 := DvI Q Rr M N W V Jm) ?_ (hoareG_seqN (hoareG_dvL3b hA hB hJm) ?_)))
  · refine hoareG_stIxN (B := Q) (nb := 8 * M.toNat) hA (fun m h => h.1.1.1)
      (fun t hL x hx => ?_) (by omega) (fun a h => dvR_q h) (oneWordL_op _ _)
    rw [ev_lw hL.1.2] at hx
    cases hx
    omega
  · refine hoareG_assignN fun t _ ⟨hJb, hW⟩ v _ => ?_
    exact ⟨dep_dvJb.upd (by decide) v hJb,
      (dep_words (S := [nm "qhat", nm "tt"]) (by decide)).upd (by decide) v hW⟩
  · refine hoareG_assignN fun t _ ⟨hJb, hW⟩ v hv => ?_
    rw [ev_cw] at hv
    cases hv
    exact ⟨dep_dvJb.upd (by decide) _ hJb,
      (dep_words (S := [nm "qhat"]) (by decide)).upd (by decide) _ (fun x hx => hW x (by
        simp at hx ⊢; exact Or.inl hx)), _, lookup_update_self _ _ _, by simp⟩
  · refine dvJb_weaken (fun m h => h.1) ?_
    refine hoareG_stIxN (B := W) (nb := 8 * (M.toNat + 1)) hA (fun m h => h.1.1.2.2.2.2.1)
      (fun t hL x hx => ?_) (by omega) (fun a h => dvR_w h) (oneWordL_op _ _)
    have := ev_add_lk hL.1.2 hL.1.1.2.2.2.1 (by omega) hx
    omega

theorem hoareG_dvInner (hA : AlignedDom X) {Q Rr M N W V Jm : BitVec 64} (hB : DvB Q Rr M N W V)
    (hJm : Jm.toNat + N.toNat ≤ M.toNat) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (fun m => DvJb Q Rr M N W V Jm m ∧ Words [nm "qhat"] m))
      dvInner (LN (DvR Q Rr M N W V) s0 (DvJb Q Rr M N W V Jm)) := by
  unfold dvInner
  refine hoareG_decN (L' := fun _ => DvJb Q Rr M N W V Jm) (fun s _ hL v _ _ => ?_)
    (fun _ m' _ h => dep_dvJb.res (by decide) _ h)
  refine hoareG_preN (L' := fun m => DvJb Q Rr M N W V Jm m ∧ Words [nm "qhat"] m) ?_
    fun m hm => hm ▸ ⟨dep_dvJb.upd (by decide) v hL.1,
      (dep_words (S := [nm "qhat"]) (by decide)).upd (by decide) v hL.2⟩
  refine hoareG_seqN (L2 := DvI Q Rr M N W V Jm) ?_ (hoareG_seqN (hoareG_dvL3a hA hB hJm) ?_)
  · refine hoareG_assignN fun t _ ⟨hJb, hW⟩ v hv => ?_
    rw [ev_cw] at hv
    cases hv
    exact ⟨dep_dvJb.upd (by decide) _ hJb,
      (dep_words (S := [nm "qhat"]) (by decide)).upd (by decide) _ hW, _,
      lookup_update_self _ _ _, by simp⟩
  · refine hoareG_decN (L' := fun _ => DvJb Q Rr M N W V Jm) (fun s _ hL v hv _ => ?_)
      (fun _ m' _ h => dep_dvJb.res (by decide) _ h)
    obtain ⟨w, rfl⟩ := ev_op_word hv
    refine hoareG_preN (L' := DvT Q Rr M N W V Jm) ?_ fun m hm => hm ▸
      ⟨dep_dvJb.upd (by decide) _ hL.1, ?_⟩
    · exact hoareG_ite (hoareG_pre (hoareG_dvTneg hA hB hJm) fun _ _ h => h.1)
        (hoareG_pre (hoareG_dvTpos hA hB hJm) fun _ _ h => h.1)
    · intro x hx
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
      rcases hx with rfl | rfl
      · rw [lookup_update_ne _ _ (by decide)]; exact hL.2.1 _ (by simp)
      · exact ⟨w, lookup_update_self _ _ _⟩

/-! ## The pure blocks -/

theorem name_div64by32 : (fnEntry Guest.Software.guestFn_div64by32).1 = nm "div64by32" := rfl
theorem name_nlz32 : (fnEntry Guest.Software.guestFn_nlz32).1 = nm "nlz32" := rfl

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureF_div64by32 : pureF (fnEntry Guest.Software.guestFn_div64by32).2.2.1 = true := by
  decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pureF_nlz32 : pureF (fnEntry Guest.Software.guestFn_nlz32).2.2.1 = true := by
  decide_cbv

theorem pureSpec_div64by32 (hC : X.code.lookup = guestCode) :
    PureSpec σ X (nm "div64by32") :=
  name_div64by32 ▸ pureSpec_decl hC (List.getElem_mem (l := Guest.Software.guestAst) (n := 63)
    (by decide)) ⟨_, rfl⟩ pureF_div64by32

theorem pureSpec_nlz32 (hC : X.code.lookup = guestCode) : PureSpec σ X (nm "nlz32") :=
  name_nlz32 ▸ pureSpec_decl hC (List.getElem_mem (l := Guest.Software.guestAst) (n := 62)
    (by decide)) ⟨_, rfl⟩ pureF_nlz32

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pure_dvQR : pureBW dvSj [nm "qhat"] [nm "div64by32"] dvQR = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem pure_dvAgain : pureBW dvSj [nm "qhat"] [] dvAgain = true := by decide_cbv

/-! ## The quotient loop -/

/-- The quotient loop state: `j ≤ M - N + 1`. -/
def DvJ3 (Q Rr M N W V : BitVec 64) (m : Locals) : Prop :=
  DvK Q Rr M N W V m ∧ ∃ J : BitVec 64, m.lookup (nm "j") = some (.val (.word J)) ∧
    J.toNat + N.toNat ≤ M.toNat + 1

theorem hoareG_dvBody3 (hA : AlignedDom X) (hC : X.code.lookup = guestCode)
    {Q Rr M N W V : BitVec 64} (hB : DvB Q Rr M N W V) {J : BitVec 64} (hJ0 : 1 ≤ J.toNat)
    (hJ : J.toNat + N.toNat ≤ M.toNat + 1) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0
        (fun m => DvK Q Rr M N W V m ∧ m.lookup (nm "j") = some (.val (.word J))))
      dvBody3 (LN (DvR Q Rr M N W V) s0 (DvJ3 Q Rr M N W V)) := by
  have hP : ∀ f, [nm "div64by32"].contains f = true → PureSpec σ X f := by
    intro f hf
    have : f = nm "div64by32" := by simpa using hf
    subst this
    exact pureSpec_div64by32 hC
  have hP0 : ∀ f, ([] : List MlS).contains f = true → PureSpec σ X f := by
    intro f hf; simp at hf
  have hJm : (J - BitVec.ofNat 64 1).toNat + N.toNat ≤ M.toNat := by
    rw [toNat_sub1 (by omega)]; omega
  let Jb := DvJb Q Rr M N W V (J - BitVec.ofNat 64 1)
  let JbW : Locals → Prop := fun m => Jb m ∧ Words [nm "qhat"] m
  have hdec : ∀ (x : MlS) (e : ExpHOL 64) (k : ProgHOL 64), x ∉ dvSj →
      HoareG σ X (LPre (DvR Q Rr M N W V) s0 Jb) k (LN (DvR Q Rr M N W V) s0 Jb) →
      HoareG σ X (LPre (DvR Q Rr M N W V) s0 Jb) (.dec x .one e k)
        (LN (DvR Q Rr M N W V) s0 Jb) := fun x e k hx hk =>
    hoareG_decN (L' := fun _ => Jb)
      (fun _ _ hL v _ _ => hoareG_preN hk fun m hm => hm ▸ dep_dvJb.upd hx v hL)
      (fun _ m' _ h => dep_dvJb.res hx _ h)
  have hdecW : ∀ (x : MlS) (e : ExpHOL 64) (k : ProgHOL 64), x ∉ dvSj → x ≠ nm "qhat" →
      HoareG σ X (LPre (DvR Q Rr M N W V) s0 JbW) k (LN (DvR Q Rr M N W V) s0 Jb) →
      HoareG σ X (LPre (DvR Q Rr M N W V) s0 JbW) (.dec x .one e k)
        (LN (DvR Q Rr M N W V) s0 Jb) := fun x e k hx hq hk =>
    hoareG_decN (L' := fun _ => Jb)
      (fun _ _ hL v _ _ => hoareG_preN hk fun m hm => hm ▸ ⟨dep_dvJb.upd hx v hL.1,
        (dep_words (S := [nm "qhat"]) (by decide)).upd (by simpa using hq) v hL.2⟩)
      (fun _ m' _ h => dep_dvJb.res hx _ h)
  unfold dvBody3
  refine hoareG_conseq (Q := LN (DvR Q Rr M N W V) s0 Jb) ?_ (fun _ _ h => h)
    (fun _ _ _ _ ⟨hr, hl, hbw⟩ => ⟨hr, ⟨hl.1, _, hl.2, by omega⟩, hbw⟩)
  refine hoareG_seqN (L2 := Jb) ?_ ?_
  · refine hoareG_assignN fun t _ ⟨hK', hj'⟩ v hv => ?_
    rw [ev_sub2 (ev_lw hj') (ev_cw _ 1)] at hv
    cases hv
    exact ⟨dvK_upd _ (by decide) hK', lookup_update_self _ _ _⟩
  refine hdec _ _ _ (by decide) ?_
  refine hdec _ _ _ (by decide) ?_
  refine hdec _ _ _ (by decide) ?_
  refine hoareG_decN (L' := fun _ => Jb) (fun s _ hL v hv _ => ?_)
    (fun _ m' _ h => dep_dvJb.res (by decide) _ h)
  rw [ev_cw] at hv
  cases hv
  refine hoareG_preN (L' := JbW) ?_ fun m hm => hm ▸ ⟨dep_dvJb.upd (by decide) _ hL,
    fun x hx => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
      subst hx
      exact ⟨_, lookup_update_self _ _ _⟩⟩
  refine hdecW _ _ _ (by decide) (by decide) ?_
  refine hoareG_seqN (hoareG_pureW (J := Jb) dep_dvJb.stable hP _ pure_dvQR) ?_
  refine hdecW _ _ _ (by decide) (by decide) ?_
  exact hoareG_seqN (hoareG_pureW (J := Jb) dep_dvJb.stable hP0 _ pure_dvAgain)
    (hoareG_dvInner hA hB hJm)

theorem hoareG_dvL3 (hA : AlignedDom X) (hC : X.code.lookup = guestCode)
    {Q Rr M N W V : BitVec 64} (hB : DvB Q Rr M N W V) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvJ3 Q Rr M N W V)) dvL3
      (LN (DvR Q Rr M N W V) s0 (DvJ3 Q Rr M N W V)) := by
  unfold dvL3
  refine hoareG_whileNN ?_
  intro t ht ⟨⟨⟨hK, J, hj, hJ⟩, hbw⟩, hc⟩ hg
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_cw] at hx
  cases hx
  rw [ev_lw hj] at hy
  cases hy
  have hJ0 := lower_true hxy
  simp only [BitVec.toNat_ofNat, Nat.zero_mod] at hJ0
  exact hoareG_dvBody3 hA hC hB hJ0 hJ t ht ⟨⟨hK, hj⟩, hbw⟩ hg

/-! ## The `n ≥ 2` part -/

theorem toNat_subBV {Z A : BitVec 64} (h : A.toNat ≤ Z.toNat) :
    (Z - A).toNat = Z.toNat - A.toNat := by
  rw [BitVec.toNat_sub]
  have := Z.isLt
  have := A.isLt
  rw [show 2 ^ 64 - A.toNat + Z.toNat = 2 ^ 64 + (Z.toNat - A.toNat) by omega, Nat.add_mod_left,
    Nat.mod_eq_of_lt (by omega)]

theorem hoareG_postN {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' K : Locals → Prop} (h : HoareG σ X (LPre Rf s0 L) p (LN Rf s0 L'))
    (hK : ∀ m, L' m → K m) : HoareG σ X (LPre Rf s0 L) p (LN Rf s0 K) :=
  hoareG_conseq h (fun _ _ h => h) fun _ _ _ _ ⟨hr, hl, hbw⟩ => ⟨hr, hK _ hl, hbw⟩

theorem hoareG_dvK (hA : AlignedDom X) (hC : X.code.lookup = guestCode)
    {Q Rr M N W V : BitVec 64} (hB : DvB Q Rr M N W V) {s0 : State σ} :
    HoareG σ X (LPre (DvR Q Rr M N W V) s0 (DvK Q Rr M N W V)) dvK
      (LP (DvR Q Rr M N W V) s0 (fun _ => True)) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  have := hB.n2; have := hB.nm; have := hB.w; have := hB.v; have := hB.q
  have := hB.r
  let K := DvK Q Rr M N W V
  let Rf := DvR Q Rr M N W V
  let Ji : Nat → Locals → Prop := fun top m => K m ∧
    ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ I.toNat ≤ top
  have hKi : ∀ (top : Nat) (e : ExpHOL 64) (I : BitVec 64), (∀ t : State σ, K t.locals →
      ev t e = some (.val (.word I))) → I.toNat ≤ top →
      HoareG σ X (LPre Rf s0 K) (.assign .local iN e) (LN Rf s0 (Ji top)) := by
    intro top e I he hI
    refine hoareG_assignN fun t _ hK v hv => ?_
    rw [he t hK] at hv
    cases hv
    exact ⟨dvK_upd _ (by decide) hK, _, lookup_update_self _ _ _, hI⟩
  have hKa : ∀ (x : MlS) (e : ExpHOL 64), dvW.contains x = false →
      HoareG σ X (LPre Rf s0 K) (.assign .local x e) (LN Rf s0 K) := fun x e hx =>
    hoareG_assignN fun t _ hK v _ => dvK_upd _ hx hK
  unfold dvK
  -- `i = n - 1`, the `vn` loop, the two stores
  refine hoareG_seqL (L2 := Ji (N.toNat - 1)) (hoareG_NQ (hKi _ _ (N - BitVec.ofNat 64 1)
    (fun t hK => ev_sub2 (ev_lw hK.2.2.2.1) (ev_cw _ 1)) (by rw [toNat_sub1 (by omega)]))) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_postN (hoareG_downLoop (b := "vn")
    (B := V) (top := N.toNat - 1) hA (fun m h => h.2.2.2.2.2)
    (by omega)
    (fun a h => dvR_v (overlap_mono h (by omega) (by omega)))
    (fun _ => oneWordL_op _ _)) fun m h => h.1)) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_st0N (b := "vn") (nb := 8) hA
    (fun m h => h.2.2.2.2.2) (by omega) (by omega)
    (fun a h => dvR_v (overlap_mono h (by omega) (by omega)))
    (oneWordL_op _ _))) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_stIxN (b := "un") (B := W) (nb := 8 * (M.toNat + 1)) hA
    (fun m h => h.2.2.2.2.1) (fun t hL x hx => ?_) (by omega) (fun a h => dvR_w h)
    (oneWordL_shift _ _ _))) ?_
  · rw [ev_lw hL.2.2.1] at hx
    cases hx
    omega
  -- `i = m - 1`, the `un` loop, the store
  refine hoareG_seqL (L2 := Ji (M.toNat - 1)) (hoareG_NQ (hKi _ _ (M - BitVec.ofNat 64 1)
    (fun t hK => ev_sub2 (ev_lw hK.2.2.1) (ev_cw _ 1)) (by rw [toNat_sub1 (by omega)]))) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_postN (hoareG_downLoop (b := "un")
    (B := W) (top := M.toNat - 1) hA (fun m h => h.2.2.2.2.1) (by omega)
    (fun a h => dvR_w (overlap_mono h (by omega) (by omega)))
    (fun _ => oneWordL_op _ _)) fun m h => h.1)) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_st0N (b := "un") (nb := 8 * (M.toNat + 1)) hA
    (fun m h => h.2.2.2.2.1) (by omega) (by omega) (fun a h => dvR_w h)
    (oneWordL_op _ _))) ?_
  -- `var vtop`, `var vsec`
  refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareG_preL (L' := K) ?_ fun m hm => hm ▸ dvK_upd _ (by decide) hL
  refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareG_preL (L' := K) ?_ fun m hm => hm ▸ dvK_upd _ (by decide) hL
  -- `j = m - n + 1`, the quotient loop
  refine hoareG_seqL (L2 := DvJ3 Q Rr M N W V) (hoareG_NQ ?_) ?_
  · refine hoareG_assignN fun t _ hK v hv => ?_
    rw [ev_add2 (ev_sub2 (ev_lw hK.2.2.1) (ev_lw hK.2.2.2.1)) (ev_cw _ 1)] at hv
    cases hv
    refine ⟨dvK_upd _ (by decide) hK, _, lookup_update_self _ _ _, ?_⟩
    rw [toNat_add1 (by rw [toNat_subBV (by omega)]; omega), toNat_subBV (by omega)]
    omega
  refine hoareG_seqL (L2 := K)
    (hoareG_NQ (hoareG_postN (hoareG_dvL3 hA hC hB) fun m h => h.1)) ?_
  -- the zero tail of `q`, the remainder
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hKa _ _ (by decide))) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_upLoop (b := "q") (ibnd := "m") (i := nm "j")
    (B := Q) (Nb := M) (nbd := M.toNat) hA (fun m h => h.1) (fun m h => h.2.2.1) (le_refl _)
    (by decide) (by decide) (by omega) (fun a h => dvR_q h) (fun _ => oneWordL_cw' 0))) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hKa _ _ (by decide))) ?_
  refine hoareG_seqL (L2 := K) (hoareG_NQ (hoareG_upLoop (b := "r") (ibnd := "n") (i := iN)
    (B := Rr) (Nb := N) (nbd := N.toNat) hA (fun m h => h.2.1) (fun m h => h.2.2.2.1)
    (le_refl _) (by decide) (by decide) (by omega) (fun a h => dvR_r h)
    (fun _ => oneWordL_op _ _))) ?_
  exact hoareG_returnL

/-- Running a block whose triple holds for every reference state inside a larger footprint. -/
theorem hoareG_reframe {p : ProgHOL 64} {Rf Rf' : BitVec 64 → Prop} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} {s0 : State σ}
    (h : ∀ t0 : State σ, HoareG σ X (LPre Rf t0 L) p (LQ Rf t0 L' Ret))
    (hR : ∀ a, Rf a → Rf' a) : HoareG σ X (LPre Rf' s0 L) p (LQ Rf' s0 L' Ret) := by
  intro t ht hpre hg
  obtain ⟨⟨hgl, hmod⟩, hL, hRet⟩ := h t t ht ⟨hpre.1, rfl, fun _ _ => rfl⟩ hg
  exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hR)⟩, hL, hRet⟩

/-! ## The `n = 1` part -/

/-- `var x = f(args); k` for a pure callee, in a normally completing context. -/
theorem hoareG_decCallPureN {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} (hf : PureSpec σ X f) {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    (hk : ∀ (s : State σ) v, InCtx s X → L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LN Rf s0 (L' s.locals)))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPre Rf s0 L) (.decCall rn sh f args k) (LN Rf s0 Lout) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs _ callee v st hR _ hsh
    obtain ⟨hgl, hm, -⟩ := hR (by simp [Good])
    refine hoareG_conseq (hk s v hs hpre.1 hsh) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hgl.trans hpre.2.1, fun a ha => by
        show st.memory a = _
        rw [hm]
        exact hpre.2.2 a ha⟩
    · intro r t _ _ ⟨hr, hL, hbw⟩
      exact ⟨hr, hout _ _ hpre.1 hL, hbw⟩
  · intro s _ _ vs _ callee r st hR _ habn
    exact absurd habn (hR (abn_good habn)).2.2

/-- The `n = 1` locals: `q`, `r` fixed, `k` a word. -/
def DvP (Q Rr : BitVec 64) (m : Locals) : Prop :=
  m.lookup (nm "q") = some (.val (.word Q)) ∧ m.lookup (nm "r") = some (.val (.word Rr)) ∧
    Words [nm "k"] m

def dvSp : List MlS := [nm "q", nm "r", nm "k"]

theorem dep_dvP {Q Rr : BitVec 64} : Dep dvSp (DvP Q Rr) :=
  dep_and (dep_lk (by decide) _) (dep_and (dep_lk (by decide) _) (dep_words (by decide)))

theorem hoareG_dvP1 (hA : AlignedDom X) (hC : X.code.lookup = guestCode)
    {Q Rr M : BitVec 64} (hM : M.toNat = 0 ∨ Q.toNat + 8 * M.toNat ≤ scratchEnd)
    (hr : Rr.toNat + 8 ≤ scratchEnd) {Rf : BitVec 64 → Prop}
    (hRq : ∀ a, Overlap Q.toNat (8 * M.toNat) a → Rf a) (hr8 : ∀ a, Overlap Rr.toNat 8 a → Rf a)
    {s0 : State σ} {L2 : Locals → Prop} :
    HoareG σ X (LPre Rf s0 (fun m => m.lookup (nm "q") = some (.val (.word Q)) ∧
        m.lookup (nm "r") = some (.val (.word Rr)) ∧ m.lookup (nm "m") = some (.val (.word M))))
      dvP1 (LP Rf s0 L2) := by
  have hse : scratchEnd < 2 ^ 63 := by decide
  let P := DvP Q Rr
  let Pj : Locals → Prop := fun m => P m ∧ ∃ J : BitVec 64,
    m.lookup (nm "j") = some (.val (.word J)) ∧ J.toNat ≤ M.toNat
  unfold dvP1
  refine hoareG_decL (L' := fun _ _ => False) (Lout := L2) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ h => h.elim)
  refine hoareG_decL (L' := fun _ _ => False) (Lout := fun _ => False)
    (fun s' _ hL' v' hv' _ => ?_) (fun _ _ _ h => h.elim)
  rw [ev_cw] at hv'
  cases hv'
  have hPm : ∀ m, m = s'.locals.update (nm "k", .val (.word (BitVec.ofNat 64 0))) →
      P m ∧ m.lookup (nm "m") = some (.val (.word M)) := by
    intro m hm
    subst hm
    rw [hL']
    refine ⟨⟨?_, ?_, fun x hx => ?_⟩, ?_⟩
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hL.1
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hL.2.1
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
      subst hx
      exact ⟨_, lookup_update_self _ _ _⟩
    · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide)]; exact hL.2.2
  refine hoareG_preL (L' := fun m => P m ∧ m.lookup (nm "m") = some (.val (.word M))) ?_ hPm
  -- `j = m`
  refine hoareG_seqL (L2 := Pj) (hoareG_NQ (hoareG_assignN fun t _ ⟨hP, hm⟩ v hv => ?_)) ?_
  · rw [ev_lw hm] at hv
    cases hv
    exact ⟨dep_dvP.upd (by decide) _ hP, _, lookup_update_self _ _ _, le_refl _⟩
  -- the digit loop
  refine hoareG_seqL (L2 := P) (hoareG_NQ (hoareG_postN (L' := Pj) ?_ fun m h => h.1)) ?_
  · refine hoareG_whileNN ?_
    intro t ht ⟨⟨⟨hP, J, hj, hJ⟩, hbw⟩, hc⟩ hg
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_cw] at hx
    cases hx
    rw [ev_lw hj] at hy
    cases hy
    have hJ0 := lower_true hxy
    simp only [BitVec.toNat_ofNat, Nat.zero_mod] at hJ0
    have hJm : (J - BitVec.ofNat 64 1).toNat = J.toNat - 1 := toNat_sub1 (by omega)
    have hQ : Q.toNat + 8 * M.toNat ≤ scratchEnd := by rcases hM with h | h <;> omega
    let Pjm : Locals → Prop := fun m => P m ∧
      m.lookup (nm "j") = some (.val (.word (J - BitVec.ofNat 64 1)))
    refine hoareG_seqN (L1 := fun m => P m ∧ m.lookup (nm "j") = some (.val (.word J)))
      (L2 := Pjm) ?_ ?_ t ht ⟨⟨hP, hj⟩, hbw⟩ hg
    · refine hoareG_assignN fun t _ ⟨hP', hj'⟩ v hv => ?_
      rw [ev_sub2 (ev_lw hj') (ev_cw _ 1)] at hv
      cases hv
      exact ⟨dep_dvP.upd (by decide) _ hP', lookup_update_self _ _ _⟩
    · have hb8 : (J.toNat - 1) * 8 + 8 ≤ 8 * M.toNat := by
        have := hJ; have := hJ0; omega
      refine hoareG_decCallPureN (pureSpec_div64by32 hC) (L' := fun _ => Pj)
        (Lout := Pj) (fun s v _ hL hsh => ?_)
        (fun m m' _ (h : Pj m') => ⟨dep_dvP.res (by decide) _ h.1, by
          obtain ⟨J', hj', hJ'⟩ := h.2
          exact ⟨J', by rw [lookup_resVarEq_ne _ _ (by decide)]; exact hj', hJ'⟩⟩)
      obtain ⟨ws, hlen, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
      let Pc : Locals → Prop := fun m => Pjm m ∧ m.lookup (nm "qr") = some (wv ws)
      refine hoareG_preN (L' := Pc) ?_ fun m hm => by
        subst hm
        exact ⟨⟨dep_dvP.upd (by decide) _ hL.1, by
          rw [lookup_update_ne _ _ (by decide)]; exact hL.2⟩, lookup_update_self _ _ _⟩
      refine hoareG_seqN (L2 := Pc) ?_ ?_
      · refine hoareG_stIxN (b := "q") (B := Q) (nb := 8 * M.toNat) hA
          (fun m h => h.1.1.1) (fun t hL x hx => ?_) (by omega) hRq ?_
        · rw [ev_lw hL.1.2] at hx
          cases hx
          rw [hJm]
          exact hb8
        · intro t hL v hv
          rw [ev_rfield_wv (i := 0) (by rw [ev_lv]; exact hL.2) (by rw [hlen]; decide)] at hv
          cases hv
          exact ⟨_, by rw [flattenHOL]⟩
      · refine hoareG_assign fun t _ ⟨⟨⟨hP', hj'⟩, hqr⟩, hbw'⟩ v _ hval => ?_
        obtain ⟨hq', hr', hk'⟩ := hP'
        obtain ⟨wk, hwk⟩ := hk' (nm "k") (by simp)
        obtain ⟨w', rfl⟩ := valid_word hwk (by rw [← isValidValueHOLFinite_eq]; exact hval)
        refine ⟨rfl, ⟨⟨?_, ?_, fun x hx => ?_⟩, J - BitVec.ofNat 64 1, ?_, ?_⟩, hbw'⟩
        · rw [lk_set_ne _ _ (by decide)]; exact hq'
        · rw [lk_set_ne _ _ (by decide)]; exact hr'
        · simp only [List.mem_cons, List.not_mem_nil, or_false] at hx
          subst hx
          exact ⟨w', lk_set_self _ _ _⟩
        · rw [lk_set_ne _ _ (by decide)]; exact hj'
        · rw [hJm]; omega
  -- `st r, k`, `return 0`
  refine hoareG_seqL (L2 := P) (hoareG_NQ (hoareG_st0N (b := "r") (B := Rr) (nb := 8) hA
    (fun m h => h.2.1) (le_refl _) (by omega) hr8
    (oneWordL_lv fun m h => h.2.2 (nm "k") (by simp))))
    hoareG_returnL

/-! ## `divmnu` -/

def wsN : MlS := nm "u256_ws"

/-- The `n ≥ 2` bounds with the workspace: `n ≤ m ≤ 17`, `n ≤ 8`, everything below
`scratchEnd`. -/
structure DvBW (Q Rr M N W : BitVec 64) : Prop where
  n2 : 2 ≤ N.toNat
  nm : N.toNat ≤ M.toNat
  m17 : M.toNat ≤ 17
  n8 : N.toNat ≤ 8
  w : W.toNat + 208 ≤ scratchEnd
  q : Q.toNat + 8 * M.toNat ≤ scratchEnd
  r : Rr.toNat + 8 * N.toNat ≤ scratchEnd

/-- The footprint: `q[0, m)`, `r[0, n)`, the workspace `u256_ws[0, 208)`. -/
def DvRW (Q Rr M N W : BitVec 64) (a : BitVec 64) : Prop :=
  Overlap Q.toNat (8 * M.toNat) a ∨ Overlap Rr.toNat (8 * N.toNat) a ∨ Overlap W.toNat 208 a

/-- What `divmnu` needs: `n ≥ 1`; for `n = 1` the buffers `q[0, m)`, `r[0, 1)`; for `n ≥ 2` the
bounds `DvBW`. -/
def DivPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ Q Rr M N W : BitVec 64, argW vs 0 = some Q ∧ argW vs 1 = some Rr ∧ argW vs 3 = some M ∧
    argW vs 5 = some N ∧ gword s wsN = some W ∧ 1 ≤ N.toNat ∧
    (N.toNat = 1 → (M.toNat = 0 ∨ Q.toNat + 8 * M.toNat ≤ scratchEnd) ∧
      Rr.toNat + 8 ≤ scratchEnd) ∧
    (2 ≤ N.toNat → DvBW Q Rr M N W)

def DivR (vs : List (ValueHOL 64)) (s : State σ) (a : BitVec 64) : Prop :=
  ∃ Q Rr M N W : BitVec 64, argW vs 0 = some Q ∧ argW vs 1 = some Rr ∧ argW vs 3 = some M ∧
    argW vs 5 = some N ∧ gword s wsN = some W ∧ DvRW Q Rr M N W a

theorem footS_divmnu (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "divmnu") DivPre DivR := by
  refine footSpecS_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cu, D, E, F, rfl, hA', hB', -, hD', -, hF', hla, hlb, -, hld, -, hlf⟩ :=
    lookupCode_six code_divmnu (by decide) hl
  obtain ⟨Q, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨Rr, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨M, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hF'
  obtain ⟨Q', Rr', M', N', W, hQ, hR, hM, hN, hW, hN1, h1, h2⟩ := hP
  cases hQ
  cases hR
  cases hM
  cases hN
  let Rf := DvRW Q Rr M N W
  let L0 : Locals → Prop := fun m => m.lookup (nm "q") = some (.val (.word Q)) ∧
    m.lookup (nm "r") = some (.val (.word Rr)) ∧ m.lookup (nm "m") = some (.val (.word M)) ∧
    m.lookup (nm "n") = some (.val (.word N))
  have dep0 : Dep [nm "q", nm "r", nm "m", nm "n"] L0 :=
    dep_and (dep_lk (by decide) _) (dep_and (dep_lk (by decide) _)
      (dep_and (dep_lk (by decide) _) (dep_lk (by decide) _)))
  refine hoareG_conseq (P := LPre Rf s0 L0) (Q := LP Rf s0 (fun _ => True)) ?_ ?_
    fun _ _ _ _ h => ⟨h.1.1, h.1.2.mono fun a ha => ⟨Q, Rr, M, N, W, rfl, rfl, rfl, rfl, hW, ha⟩⟩
  rotate_left
  · intro t _ ht
    subst t
    exact lpre_init (by rw [hloc]; exact ⟨hla, hlb, hld, hlf⟩)
  -- `var i`, `var j`
  refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareG_preL (L' := L0) ?_ fun m hm => hm ▸ dep0.upd (by decide) v hL
  refine hoareG_decL (L' := fun _ _ => True) (Lout := fun _ => True) (fun s _ hL v _ _ => ?_)
    (fun _ _ _ _ => trivial)
  refine hoareG_preL (L' := L0) ?_ fun m hm => hm ▸ dep0.upd (by decide) v hL
  -- the `n = 1` path
  refine hoareG_seqL (L2 := fun m => L0 m ∧ N.toNat ≠ 1) ?_ ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨hL, hbw⟩, hc⟩ => ⟨hbw, fun _ => ⟨hL, ?_⟩,
      fun _ h => nomatch h⟩)
    · intro t ht ⟨hpre, w, hw, hw0⟩
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lw hpre.1.2.2.2] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_iff_eq] at hxy
      subst hxy
      have hN : (BitVec.ofNat 64 1).toNat = 1 := rfl
      exact hoareG_dvP1 hA hC (h1 hN).1 (h1 hN).2 (fun a h => Or.inl h)
        (fun a h => Or.inr (Or.inl (by rw [hN]; exact h))) t ht
        ⟨⟨hpre.1.1, hpre.1.2.1, hpre.1.2.2.1⟩, hpre.2⟩
    · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hL.2.2.2] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_eq_false_iff_ne] at hxy
      intro h
      exact hxy (BitVec.eq_of_toNat_eq (by rw [h]; rfl))
  -- `n ≥ 2`: the workspace, `nlz32`, the rest
  have hgw : ∀ t : State σ, BWPost Rf s0 t →
      ev t (.var .global (nm "u256_ws")) = some (.val (.word W)) := fun t h => by
    rw [ev_gv, h.1]
    unfold gword at hW
    split at hW
    · rename_i w hw; cases hW; exact hw
    · cases hW
  refine hoareG_decL' (L' := fun _ _ => True) (Lout := fun _ => True)
    (fun s _ hpre v hv _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_add2 (hgw s hpre.2) (ev_cw _ 0)] at hv
  cases hv
  refine hoareG_decL' (L' := fun _ _ => True) (Lout := fun _ => True)
    (fun s' _ hpre' v' hv' _ => ?_) (fun _ _ _ _ => trivial)
  rw [ev_add2 (hgw s' hpre'.2) (ev_cw _ 144)] at hv'
  cases hv'
  have hB2 : 2 ≤ N.toNat := by have := hpre.1.2; omega
  have hBW := h2 hB2
  have hse : scratchEnd < 2 ^ 63 := by decide
  have := hBW.w; have := hBW.m17; have := hBW.n8; have := hBW.nm
  have hW144 : (W + BitVec.ofNat 64 144).toNat = W.toNat + 144 := toNat_addc (by omega)
  have hB : DvB Q Rr M N W (W + BitVec.ofNat 64 144) :=
    ⟨hB2, hBW.nm, by omega, by rw [hW144]; omega, hBW.q, hBW.r⟩
  have hRin : ∀ a, DvR Q Rr M N W (W + BitVec.ofNat 64 144) a → Rf a := by
    intro a h
    rcases h with h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (overlap_mono h (le_refl _) (by omega)))
    · exact Or.inr (Or.inr (overlap_mono h (by rw [hW144]; omega) (by rw [hW144]; omega)))
  refine hoareG_decCallFoot (L' := fun _ _ => True) (Lout := fun _ => True)
    (footRet_of_foot (pureSpec_nlz32 hC).foot) (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩)
    ?_ (fun _ _ _ _ => trivial)
  intro s'' _ v _ hL'' _ _ _
  refine hoareG_preL (L' := DvK Q Rr M N W (W + BitVec.ofNat 64 144))
    (hoareG_reframe (fun t0 => hoareG_dvK hA hC hB) hRin) fun m hm => ?_
  subst hm
  have hL0 := hpre.1.1
  have e1 : s''.locals = (s.locals.update (nm "un", .val (.word (W + BitVec.ofNat 64 0)))).update
      (nm "vn", .val (.word (W + BitVec.ofNat 64 144))) := by rw [hL'', hpre'.1]
  rw [e1]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide)]; exact hL0.1
  · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide)]; exact hL0.2.1
  · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide)]; exact hL0.2.2.1
  · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_ne _ _ (by decide)]; exact hL0.2.2.2
  · rw [lookup_update_ne _ _ (by decide), lookup_update_ne _ _ (by decide),
      lookup_update_self]; simp
  · rw [lookup_update_ne _ _ (by decide), lookup_update_self]

/-! ## The summary -/

/-- `q` holds `8 m` bytes, `r` holds `8 n` bytes. -/
def sigDivmnu : Sig :=
  { params := [.bufArg 3 8 0, .bufArg 5 8 0, .any, .any, .any, .any], grows := false }

/-- What the caller must know beyond `ArgsOK`: `n ≥ 1`, and `n ≤ m ≤ 17`, `n ≤ 8` when
`n ≥ 2`. -/
def DivPreS (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ M N : BitVec 64, argW vs 3 = some M → argW vs 5 = some N → 1 ≤ N.toNat ∧
    (2 ≤ N.toNat → N.toNat ≤ M.toNat ∧ M.toNat ≤ 17 ∧ N.toNat ≤ 8)

theorem argBuf_of {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    {i j c : Nat} (hps : ps[i]? = some (.bufArg j c 0)) (hA : ArgsOK C Γ p ps vs) :
    ∃ D N : BitVec 64, argW vs i = some D ∧ argW vs j = some N ∧ BufOK C Γ p D.toNat (c * N.toNat) := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  obtain ⟨w, x, hw, hx, hb⟩ := hA.2 i _ v hps hv
  exact ⟨w, x, by rw [argW, hv]; exact hw, hx, by simpa using hb⟩

theorem sumSpec_divmnu {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 208) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    SumSpec σ X C H (nm "divmnu") sigDivmnu DivPreS (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpec_of_footS hH hT rfl (footS_divmnu hC hA) ?_ ?_
  · intro Γ p vs s hG hp hA' hPS
    obtain ⟨W, hW, hWe, -⟩ := scell_of_glob hG hWS
    obtain ⟨p0, hp0, hord, hL, -⟩ := hG
    rw [hp] at hp0
    cases hp0
    obtain ⟨Q, M, hQ, hM, hbq⟩ := argBuf_of (i := 0) (j := 3) (c := 8) rfl hA'
    obtain ⟨Rr, N, hR, hN, hbr⟩ := argBuf_of (i := 1) (j := 5) (c := 8) rfl hA'
    obtain ⟨h1, h2⟩ := hPS M N hM hN
    have bq := bufOK_bound hord hL Q.isLt hbq
    have br := bufOK_bound hord hL Rr.isLt hbr
    refine ⟨Q, Rr, M, N, W, hQ, hR, hM, hN, hW, h1, fun hn1 => ⟨?_, ?_⟩, fun hn2 => ?_⟩
    · rcases bq with h | h
      · left; omega
      · right; exact h
    · rcases br with h | h <;> omega
    · obtain ⟨hnm, hm17, hn8⟩ := h2 hn2
      exact ⟨hn2, hnm, hm17, hn8, hWe, by rcases bq with h | h <;> omega,
        by rcases br with h | h <;> omega⟩
  · intro Γ p vs s a hG _ _ _ ⟨Q, Rr, M, N, W, hQ, hR, hM, hN, hW, hdv⟩
    rcases hdv with h | h | h
    · exact Or.inl ⟨0, Q, hQ, Or.inr ⟨3, 8, 0, M, rfl, hM, by simpa using h⟩⟩
    · exact Or.inl ⟨1, Rr, hR, Or.inr ⟨5, 8, 0, N, rfl, hN, by simpa using h⟩⟩
    · obtain ⟨W', hW', -, hsc⟩ := scell_of_glob hG hWS
      rw [hW] at hW'
      cases hW'
      exact Or.inr (hsc a h)

end InitECandidate.Solver.MemSafe.Helpers
