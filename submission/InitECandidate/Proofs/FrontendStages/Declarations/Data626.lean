import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify610
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body626_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "byte"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr
        (Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "d",
              Flapjack.Exp.panOp Flapjack.PanOp.mul
                [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k")
                    (Flapjack.Exp.const 2#64),
                  Flapjack.Exp.const 8#64]]))
        (Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 3#64],
            Flapjack.Exp.const 8#64]),
      Flapjack.Exp.const 255#64])

def body626_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body626_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64))
  (Flapjack.Exp.var Flapjack.VarKind.local "nd")) body626_0 body626_1

def body626_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.var Flapjack.VarKind.local "byte")

def body626_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body626_5 : Prog (BitVec 64) :=
.seq body626_3 body626_4

def body626_6 : Prog (BitVec 64) :=
.seq body626_2 body626_5

def body626_7 : Prog (BitVec 64) :=
.dec ("byte") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body626_6

def body626_8 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "nbytes", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) body626_7

def body626_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nbytes")) body626_8

def body626_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body626_11 : Prog (BitVec 64) :=
.seq body626_9 body626_10

def body626_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body626_11

def body626_13 : Prog (BitVec 64) :=
.seq body626_2 body626_3

def body626_14 : Prog (BitVec 64) :=
.seq body626_13 body626_4

def body626_15 : Prog (BitVec 64) :=
.dec ("byte") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body626_14

def body626_16 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "nbytes", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) body626_15

def body626_17 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nbytes")) body626_16

def body626_18 : Prog (BitVec 64) :=
.seq body626_17 body626_10

def body626_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body626_18

def originalData626 : Decl (BitVec 64) :=
.function { name := "bn_to_be", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("nd", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("nbytes", Flapjack.Shape.one)], body := body626_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData626 : Decl (BitVec 64) :=
.function { name := "bn_to_be", inline := false, exported := false, params := [("d", Flapjack.Shape.one), ("nd", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("nbytes", Flapjack.Shape.one)], body := body626_19, returnShape := (Flapjack.Shape.one) }
def original626 := Pancake.PanLang.declToHOL originalData626
def simplified626 := Pancake.PanLang.declToHOL simplifiedData626
end InitECandidate.Proofs.FrontendStages.Declarations
