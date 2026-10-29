import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify598
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body614_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y",
      Flapjack.Exp.var Flapjack.VarKind.local "z"])

def body614_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body614_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) body614_0 body614_1

def body614_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"],
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "z"]])

def body614_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) body614_3 body614_1

def body614_5 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "x",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.const 4294967295#64]],
      Flapjack.Exp.var Flapjack.VarKind.local "z"])

def body614_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) body614_5 body614_1

def body614_7 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "z"],
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "y",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 4294967295#64]]])

def body614_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) body614_7 body614_1

def body614_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "x",
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "y",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 4294967295#64]]])

def body614_10 : Prog (BitVec 64) :=
.seq body614_8 body614_9

def body614_11 : Prog (BitVec 64) :=
.seq body614_6 body614_10

def body614_12 : Prog (BitVec 64) :=
.seq body614_4 body614_11

def body614_13 : Prog (BitVec 64) :=
.seq body614_2 body614_12

def body614_14 : Prog (BitVec 64) :=
.seq body614_2 body614_4

def body614_15 : Prog (BitVec 64) :=
.seq body614_14 body614_6

def body614_16 : Prog (BitVec 64) :=
.seq body614_15 body614_8

def body614_17 : Prog (BitVec 64) :=
.seq body614_16 body614_9

def originalData614 : Decl (BitVec 64) :=
.function { name := "rmd_f", inline := false, exported := false, params := [("j", Flapjack.Shape.one), ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one), ("z", Flapjack.Shape.one)], body := body614_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData614 : Decl (BitVec 64) :=
.function { name := "rmd_f", inline := false, exported := false, params := [("j", Flapjack.Shape.one), ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one), ("z", Flapjack.Shape.one)], body := body614_17, returnShape := (Flapjack.Shape.one) }
def original614 := Pancake.PanLang.declToHOL originalData614
def simplified614 := Pancake.PanLang.declToHOL simplifiedData614
end InitECandidate.Proofs.FrontendStages.Declarations
