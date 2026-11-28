import InitECandidate.Solver.SortAddr.Hit
import InitECandidate.Solver.Spec.Code

/-!
# The installed `sort_elems` body, restated

A self-contained copy of the bottom-up merge sort's syntax (the same terms as
`MemSafe/Aw/Srt.lean`), with the code-map identity checked against the guest AST.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def qP : MlS := nm "p"
def qN : MlS := nm "n"
def qE : MlS := nm "esz"
def qKind : MlS := nm "kind"
def qT : MlS := nm "tmp"
def qMark : MlS := nm "mark"
def qAux : MlS := nm "aux"
def qSrc : MlS := nm "src"
def qDst : MlS := nm "dst"
def qW : MlS := nm "width"
def qL : MlS := nm "left"
def qM : MlS := nm "mid"
def qR : MlS := nm "right"
def qI : MlS := nm "i"
def qJ : MlS := nm "j"
def qK : MlS := nm "k"
def qA : MlS := nm "a"
def qB : MlS := nm "b"
def qGt : MlS := nm "gt"
def qSwap : MlS := nm "swap"

def kDst : ExpHOL 64 := .op .add [lv qDst, .panop .mul [lv qK, lv qE]]
def kSrc (x : MlS) : ExpHOL 64 := .op .add [lv qSrc, .panop .mul [lv x, lv qE]]

def mCond : ExpHOL 64 :=
  .op .and [.cmp .notEqual (cw 0) (.cmp .less (lv qI) (lv qM)),
    .cmp .notEqual (cw 0) (.cmp .less (lv qJ) (lv qR))]

def mStep : ProgHOL 64 :=
  .dec qA .one (kSrc qI)
    (.dec qB .one (kSrc qJ)
      (.decCall qGt .one (nm "bal_sort_gt") [lv qA, lv qB, lv qKind]
        (.seq (.ite (.cmp .equal (lv qGt) (cw 0))
            (.seq (callD (nm "memcpy") [kDst, lv qA, lv qE])
              (.assign .local qI (.op .add [lv qI, cw 1])))
            (.seq (callD (nm "memcpy") [kDst, lv qB, lv qE])
              (.assign .local qJ (.op .add [lv qJ, cw 1]))))
          (.assign .local qK (.op .add [lv qK, cw 1])))))

def tStep (x : MlS) : ProgHOL 64 :=
  .seq (callD (nm "memcpy") [kDst, kSrc x, lv qE])
    (.seq (.assign .local x (.op .add [lv x, cw 1]))
      (.assign .local qK (.op .add [lv qK, cw 1])))

def mLoop : ProgHOL 64 := .while mCond mStep
def tLoop (x y : MlS) : ProgHOL 64 := .while (.cmp .less (lv x) (lv y)) (tStep x)

def mMerge : ProgHOL 64 :=
  .seq mLoop (.seq (tLoop qI qM) (.seq (tLoop qJ qR) (.assign .local qL (lv qR))))

def mInner : ProgHOL 64 :=
  .dec qM .one (.op .add [lv qL, lv qW])
    (.seq (.ite (.cmp .lower (lv qN) (lv qM)) (.assign .local qM (lv qN)) .skip)
      (.dec qR .one (.op .add [lv qM, lv qW])
        (.seq (.ite (.cmp .lower (lv qN) (lv qR)) (.assign .local qR (lv qN)) .skip)
          (.dec qI .one (lv qL)
            (.dec qJ .one (lv qM)
              (.dec qK .one (lv qL) mMerge))))))

def pLoop : ProgHOL 64 := .while (.cmp .less (lv qL) (lv qN)) mInner

def mOuter : ProgHOL 64 :=
  .dec qL .one (cw 0)
    (.seq pLoop
      (.dec qSwap .one (lv qSrc)
        (.seq (.assign .local qSrc (lv qDst))
          (.seq (.assign .local qDst (lv qSwap))
            (.assign .local qW (.panop .mul [lv qW, cw 2]))))))

def wLoop : ProgHOL 64 := .while (.cmp .less (lv qW) (lv qN)) mOuter

def mEnd : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv qSrc) (lv qP))
      (callD (nm "memcpy") [lv qP, lv qSrc, .panop .mul [lv qN, lv qE]]) .skip)
    (.seq (callD (nm "heap_release") [lv qMark]) (.return (cw 0)))

def sBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv qN) (cw 2)) (.return (cw 0)) .skip)
    (.decCall qMark .one (nm "heap_mark") []
      (.decCall qAux .one (nm "alloc") [.panop .mul [lv qN, lv qE]]
        (.dec qSrc .one (lv qP)
          (.dec qDst .one (lv qAux)
            (.dec qW .one (cw 1)
              (.seq wLoop mEnd))))))

def sParams : List (MlS × ShapeHOL) :=
  [(qP, .one), (qN, .one), (qE, .one), (qKind, .one), (qT, .one)]

theorem code_sort : guestCode (nm "sort_elems") = some (sParams, sBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_sort_elems = (nm "sort_elems", sParams, sBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 430) (by decide)) ⟨_, rfl⟩ h

end InitECandidate.Solver.SortAddr
