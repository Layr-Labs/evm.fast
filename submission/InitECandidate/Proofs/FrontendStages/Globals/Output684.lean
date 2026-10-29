import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data684
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate668
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody684_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "d"]

def globalBody684_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody684_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "d"]

def globalBody684_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody684_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 1#64)) globalBody684_2 globalBody684_3

def globalBody684_5 : Prog (BitVec 64) :=
.seq globalBody684_1 globalBody684_4

def globalBody684_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody684_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "started" (Flapjack.Exp.const 1#64)

def globalBody684_8 : Prog (BitVec 64) :=
.seq globalBody684_6 globalBody684_7

def globalBody684_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) globalBody684_8 globalBody684_3

def globalBody684_10 : Prog (BitVec 64) :=
.dec ("bit") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.shift Flapjack.Shift.lsr
      (Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "ew",
            Flapjack.Exp.panOp Flapjack.PanOp.mul
              [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "i")
                  (Flapjack.Exp.const 6#64),
                Flapjack.Exp.const 8#64]]))
      (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 63#64]),
    Flapjack.Exp.const 1#64]) globalBody684_9

def globalBody684_11 : Prog (BitVec 64) :=
.seq globalBody684_5 globalBody684_10

def globalBody684_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody684_11

def globalBody684_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody684_14 : Prog (BitVec 64) :=
.seq globalBody684_12 globalBody684_13

def globalBody684_15 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nw", Flapjack.Exp.const 64#64]) globalBody684_14

def globalBody684_16 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody684_15

def globalBody684_17 : Prog (BitVec 64) :=
.seq globalBody684_0 globalBody684_16

def globalData684 : Decl (BitVec 64) :=
.function { name := "fq12_pow_words", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one), ("ew", Flapjack.Shape.one), ("nw", Flapjack.Shape.one)], body := globalBody684_17, returnShape := (Flapjack.Shape.one) }
def globalOutput684 := Pancake.PanLang.declToHOL globalData684
end InitECandidate.Proofs.FrontendStages.Declarations
