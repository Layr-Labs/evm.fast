import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data610
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody610_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y",
      Flapjack.Exp.var Flapjack.VarKind.local "z"])

def globalBody610_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody610_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody610_0 globalBody610_1

def globalBody610_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"],
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "z"]])

def globalBody610_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) globalBody610_3 globalBody610_1

def globalBody610_5 : Prog (BitVec 64) :=
.seq globalBody610_2 globalBody610_4

def globalBody610_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "x",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.const 4294967295#64]],
      Flapjack.Exp.var Flapjack.VarKind.local "z"])

def globalBody610_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) globalBody610_6 globalBody610_1

def globalBody610_8 : Prog (BitVec 64) :=
.seq globalBody610_5 globalBody610_7

def globalBody610_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "z"],
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "y",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 4294967295#64]]])

def globalBody610_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) globalBody610_9 globalBody610_1

def globalBody610_11 : Prog (BitVec 64) :=
.seq globalBody610_8 globalBody610_10

def globalBody610_12 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "x",
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "y",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 4294967295#64]]])

def globalBody610_13 : Prog (BitVec 64) :=
.seq globalBody610_11 globalBody610_12

def globalData610 : Decl (BitVec 64) :=
.function { name := "rmd_f", inline := false, exported := false, params := [("j", Flapjack.Shape.one), ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one), ("z", Flapjack.Shape.one)], body := globalBody610_13, returnShape := (Flapjack.Shape.one) }
def globalOutput610 := Pancake.PanLang.declToHOL globalData610
end InitECandidate.Proofs.FrontendStages.Declarations
