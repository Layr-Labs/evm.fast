import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data614
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody614_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y",
      Flapjack.Exp.var Flapjack.VarKind.local "z"])

def globalBody614_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody614_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 16#64)) globalBody614_0 globalBody614_1

def globalBody614_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"],
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4294967295#64],
          Flapjack.Exp.var Flapjack.VarKind.local "z"]])

def globalBody614_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 32#64)) globalBody614_3 globalBody614_1

def globalBody614_5 : Prog (BitVec 64) :=
.seq globalBody614_2 globalBody614_4

def globalBody614_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "x",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.const 4294967295#64]],
      Flapjack.Exp.var Flapjack.VarKind.local "z"])

def globalBody614_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 48#64)) globalBody614_6 globalBody614_1

def globalBody614_8 : Prog (BitVec 64) :=
.seq globalBody614_5 globalBody614_7

def globalBody614_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "z"],
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "y",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 4294967295#64]]])

def globalBody614_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "j") (Flapjack.Exp.const 64#64)) globalBody614_9 globalBody614_1

def globalBody614_11 : Prog (BitVec 64) :=
.seq globalBody614_8 globalBody614_10

def globalBody614_12 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.xor
    [Flapjack.Exp.var Flapjack.VarKind.local "x",
      Flapjack.Exp.op Flapjack.BinOp.or
        [Flapjack.Exp.var Flapjack.VarKind.local "y",
          Flapjack.Exp.op Flapjack.BinOp.xor
            [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 4294967295#64]]])

def globalBody614_13 : Prog (BitVec 64) :=
.seq globalBody614_11 globalBody614_12

def globalData614 : Decl (BitVec 64) :=
.function { name := "rmd_f", inline := false, exported := false, params := [("j", Flapjack.Shape.one), ("x", Flapjack.Shape.one), ("y", Flapjack.Shape.one), ("z", Flapjack.Shape.one)], body := globalBody614_13, returnShape := (Flapjack.Shape.one) }
def globalOutput614 := Pancake.PanLang.declToHOL globalData614
end InitECandidate.Proofs.FrontendStages.Declarations
