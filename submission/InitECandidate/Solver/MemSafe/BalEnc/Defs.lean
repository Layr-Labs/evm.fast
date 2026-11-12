import InitECandidate.Solver.MemSafe.BalEnc.Conv

set_option autoImplicit false

/-!
# `bal_encode_account`: the code as a structured program

The body is written with builders: `wrapS` (the "move the payload behind its list header"
stretch, 12 times), `stepW` (`w = f(x, ...); x = x + w`), `entryBody` (one `[idx, value]` entry),
`listSec` (one sorted list section). `code_bal_encode_account` states that the program of
`Guest/src/bal.pnk` is `balBody`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def bDst : MlS := nm "dst"
def bAddr : MlS := nm "addr"
def bAd : MlS := nm "ad"
def bTmp : MlS := nm "tmp"
def bP : MlS := nm "p"
def bW : MlS := nm "w"
def bMark : MlS := nm "mark"
def bSc : MlS := nm "sc"
def bSlots : MlS := nm "slots"
def bQ : MlS := nm "q"
def bI : MlS := nm "i"
def bSlot : MlS := nm "slot"
def bM : MlS := nm "m"
def bL : MlS := nm "l"
def bN : MlS := nm "n"
def bLp : MlS := nm "lp"
def bR : MlS := nm "r"
def bSv : MlS := nm "sv"
def bCs : MlS := nm "cs"
def bJ : MlS := nm "j"
def bE : MlS := nm "e"
def bC : MlS := nm "c"
def bHl : MlS := nm "hl"
def bHl2 : MlS := nm "hl2"
def bHl3 : MlS := nm "hl3"
def bHl4 : MlS := nm "hl4"
def bSr : MlS := nm "sr"
def bRk : MlS := nm "rk"
def bKept : MlS := nm "kept"
def bHasw : MlS := nm "hasw"
def bSv2 : MlS := nm "sv2"
def bHl5 : MlS := nm "hl5"
def bL2 : MlS := nm "l2"
def bN2 : MlS := nm "n2"
def bLp2 : MlS := nm "lp2"
def bE2 : MlS := nm "e2"
def bC2 : MlS := nm "c2"
def bHl6 : MlS := nm "hl6"
def bHl7 : MlS := nm "hl7"
def bL3 : MlS := nm "l3"
def bN3 : MlS := nm "n3"
def bLp3 : MlS := nm "lp3"
def bE3 : MlS := nm "e3"
def bC3 : MlS := nm "c3"
def bHl8 : MlS := nm "hl8"
def bHl9 : MlS := nm "hl9"
def bL4 : MlS := nm "l4"
def bN4 : MlS := nm "n4"
def bLp4 : MlS := nm "lp4"
def bE4 : MlS := nm "e4"
def bC4 : MlS := nm "c4"
def bHl10 : MlS := nm "hl10"
def bHl11 : MlS := nm "hl11"
def bPayload : MlS := nm "payload"
def bHl12 : MlS := nm "hl12"

/-- `ld1 x k = lds 1 (x + k)`. -/
def ld1 (x : MlS) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv x, cw k])
def ld4 (x : MlS) (k : Nat) : ExpHOL 64 :=
  .load (.comb [.one, .one, .one, .one]) (.op .add [lv x, cw k])

/-- `c - (b + 9)` -/
def subE (c b : MlS) : ExpHOL 64 := .op .sub [lv c, .op .add [lv b, cw 9]]

/-- The wrap stretch: `hl = rlp_list_header_len(c - (b+9)); memcpy(b + hl, b + 9, c - (b+9));
rlp_encode_list_header(b, c - (b+9)); b = b + hl + (c - (b+9)); k`. -/
def wrapS (hl b c : MlS) (k : ProgHOL 64) : ProgHOL 64 :=
  .decCall hl .one (nm "rlp_list_header_len") [subE c b]
    (.seq (callD (nm "memcpy") [.op .add [lv b, lv hl], .op .add [lv b, cw 9], subE c b])
      (.seq (callD (nm "rlp_encode_list_header") [lv b, subE c b])
        (.seq (.assign .local b (.op .add [lv b, lv hl, subE c b])) k)))

/-- `w = f(x, args); x = x + w; k` -/
def stepW (f x : MlS) (args : List (ExpHOL 64)) (k : ProgHOL 64) : ProgHOL 64 :=
  .seq (callW f (lv x :: args)) (.seq (.assign .local x (.op .add [lv x, lv bW])) k)

/-- One `[idx, value]` entry of a list: `e = lp + i * E; c = b + 9; word(idx); f2(value);
wrap into `b`; `i = i + 1`. -/
def entryBody (i b lp e c hl : MlS) (E : Nat) (f2 : MlS) (args2 : List (ExpHOL 64)) : ProgHOL 64 :=
  .dec e .one (.op .add [lv lp, .panop .mul [lv i, cw E]])
    (.dec c .one (.op .add [lv b, cw 9])
      (stepW (nm "rlp_encode_word") c [.load .one (lv e)]
        (stepW f2 c args2 (wrapS hl b c (.assign .local i (.op .add [lv i, cw 1]))))))

def entryLoop (i n b lp e c hl : MlS) (E : Nat) (f2 : MlS) (args2 : List (ExpHOL 64)) : ProgHOL 64 :=
  .while (.cmp .less (lv i) (lv n)) (entryBody i b lp e c hl E f2 args2)

/-- A sorted list section: `l = lds (ad + off); n = ..; lp = ..; sort_elems(lp, n, E, 0, tmp);
q = p + 9; i = 0; loop; wrap into p; k`. -/
def listSec (off E : Nat) (l n lp e c hlE hlP : MlS) (f2 : MlS) (args2 : List (ExpHOL 64))
    (k : ProgHOL 64) : ProgHOL 64 :=
  .dec l .one (ld1 bAd off)
    (.dec n .one (ld1 l 8)
      (.dec lp .one (ld1 l 0)
        (.seq (callD (nm "sort_elems") [lv lp, lv n, cw E, cw 0, lv bTmp])
          (.seq (.assign .local bQ (.op .add [lv bP, cw 9]))
            (.seq (.assign .local bI (cw 0))
              (.seq (entryLoop bI n bQ lp e c hlE E f2 args2)
                (wrapS hlP bP bQ k)))))))

/-- The storage-changes loop body (one slot). -/
def slotBody : ProgHOL 64 :=
  .dec bSlot .one (.op .add [.rfield 0 (lv bSlots), .panop .mul [lv bI, cw 32]])
    (.decCall bM (.comb [.one, .one]) (nm "htab_get") [lv bSc, lv bSlot]
      (.dec bL .one (.rfield 1 (lv bM))
        (.dec bN .one (ld1 bL 8)
          (.dec bLp .one (ld1 bL 0)
            (.seq (callD (nm "sort_elems") [lv bLp, lv bN, cw 40, cw 0, lv bTmp])
              (.dec bR .one (.op .add [lv bQ, cw 9])
                (.decCall bSv (.comb [.one, .one, .one, .one]) (nm "u256_from_be") [lv bSlot, cw 32]
                  (.seq (callW (nm "rlp_put_u256") [lv bR, lv bSv])
                    (.seq (.assign .local bR (.op .add [lv bR, lv bW]))
                      (.dec bCs .one (.op .add [lv bR, cw 9])
                        (.dec bJ .one (cw 0)
                          (.seq (entryLoop bJ bN bCs bLp bE bC bHl 40 (nm "rlp_put_u256")
                              [ld4 bE 8])
                            (wrapS bHl2 bR bCs
                              (wrapS bHl3 bQ bR
                                (.assign .local bI (.op .add [lv bI, cw 1]))))))))))))))))

/-- The in-place filter loop of the storage reads. -/
def filterLoop : ProgHOL 64 :=
  .while (.cmp .less (lv bI) (.rfield 1 (lv bRk)))
    (.decCall bHasw .one (nm "htab_has")
      [lv bSc, .op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]]]
      (.seq (.ite (.cmp .equal (lv bHasw) (cw 0))
          (.seq (.store (.op .add [.rfield 0 (lv bRk), .panop .mul [lv bKept, cw 32]])
              (.load (.comb [.one, .one, .one, .one])
                (.op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]])))
            (.assign .local bKept (.op .add [lv bKept, cw 1])))
          .skip)
        (.assign .local bI (.op .add [lv bI, cw 1]))))

/-- The output loop of the storage reads. -/
def keysLoop : ProgHOL 64 :=
  .while (.cmp .less (lv bI) (lv bKept))
    (.decCall bSv2 (.comb [.one, .one, .one, .one]) (nm "u256_from_be")
      [.op .add [.rfield 0 (lv bRk), .panop .mul [lv bI, cw 32]], cw 32]
      (.seq (callW (nm "rlp_put_u256") [lv bQ, lv bSv2])
        (.seq (.assign .local bQ (.op .add [lv bQ, lv bW]))
          (.assign .local bI (.op .add [lv bI, cw 1])))))

/-- The tail: release, outer header. -/
def tailS : ProgHOL 64 :=
  .seq (callD (nm "heap_release") [lv bMark])
    (.dec bPayload .one (.op .sub [lv bP, .op .add [lv bDst, cw 9]])
      (.decCall bHl12 .one (nm "rlp_list_header_len") [lv bPayload]
        (.seq (callD (nm "memcpy") [.op .add [lv bDst, lv bHl12], .op .add [lv bDst, cw 9], lv bPayload])
          (.seq (callD (nm "rlp_encode_list_header") [lv bDst, lv bPayload])
            (.return (.op .add [lv bHl12, lv bPayload]))))))

def codeSec : ProgHOL 64 :=
  listSec 32 24 bL4 bN4 bLp4 bE4 bC4 bHl10 bHl11 (nm "rlp_encode_bytes")
    [ld1 bE4 8, ld1 bE4 16] tailS

def nonceSec : ProgHOL 64 :=
  listSec 24 16 bL3 bN3 bLp3 bE3 bC3 bHl8 bHl9 (nm "rlp_encode_word") [ld1 bE3 8] codeSec

def balSec : ProgHOL 64 :=
  listSec 16 40 bL2 bN2 bLp2 bE2 bC2 bHl6 bHl7 (nm "rlp_put_u256") [ld4 bE2 8] nonceSec

/-- The storage reads: keys, filter, sort, output. -/
def keysSec : ProgHOL 64 :=
  .dec bSr .one (ld1 bAd 8)
    (.decCall bRk (.comb [.one, .one]) (nm "htab_keys") [lv bSr]
      (.dec bKept .one (cw 0)
        (.seq (.assign .local bI (cw 0))
          (.seq filterLoop
            (.seq (callD (nm "sort_elems") [.rfield 0 (lv bRk), lv bKept, cw 32, cw 2, lv bTmp])
              (.seq (.assign .local bQ (.op .add [lv bP, cw 9]))
                (.seq (.assign .local bI (cw 0))
                  (.seq keysLoop (wrapS bHl5 bP bQ balSec)))))))))

def storSec : ProgHOL 64 :=
  .dec bQ .one (.op .add [lv bP, cw 9])
    (.dec bI .one (cw 0)
      (.seq (.while (.cmp .less (lv bI) (.rfield 1 (lv bSlots))) slotBody)
        (wrapS bHl4 bP bQ keysSec)))

def balBody : ProgHOL 64 :=
  .dec bP .one (.op .add [lv bDst, cw 9])
    (.decCall bW .one (nm "rlp_encode_bytes") [lv bP, lv bAddr, cw 20]
      (.seq (.assign .local bP (.op .add [lv bP, lv bW]))
        (.decCall bMark .one (nm "heap_mark") []
          (.dec bSc .one (ld1 bAd 0)
            (.decCall bSlots (.comb [.one, .one]) (nm "sorted_keys32") [lv bSc, lv bTmp]
              storSec)))))

theorem code_bal_encode_account : guestCode (nm "bal_encode_account") =
    some ([(bDst, .one), (bAddr, .one), (bAd, .one), (bTmp, .one)], balBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_bal_encode_account =
      (nm "bal_encode_account", [(bDst, .one), (bAddr, .one), (bAd, .one), (bTmp, .one)], balBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 432) (by decide)) ⟨_, rfl⟩ h

end InitECandidate.Solver.MemSafe.BalEnc
