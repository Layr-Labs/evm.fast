import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data121
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody121_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody121_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody121_2 : Prog (BitVec 64) :=
.seq globalBody121_0 globalBody121_1

def globalBody121_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody121_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 55#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody121_2 globalBody121_3

def globalBody121_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.const 55#64,
      Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def globalBody121_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_put_be"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "ll"]

def globalBody121_7 : Prog (BitVec 64) :=
.seq globalBody121_5 globalBody121_6

def globalBody121_8 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll"])

def globalBody121_9 : Prog (BitVec 64) :=
.seq globalBody121_7 globalBody121_8

def globalBody121_10 : Prog (BitVec 64) :=
.decCall ("ll") (Flapjack.Shape.one) ("rlp_be_len") ([Flapjack.Exp.var Flapjack.VarKind.local "n"]) globalBody121_9

def globalBody121_11 : Prog (BitVec 64) :=
.seq globalBody121_4 globalBody121_10

def globalData121 : Decl (BitVec 64) :=
.function { name := "rlp_write_header", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("base", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody121_11, returnShape := (Flapjack.Shape.one) }
def globalOutput121 := Pancake.PanLang.declToHOL globalData121
end InitECandidate.Proofs.FrontendStages.Declarations
