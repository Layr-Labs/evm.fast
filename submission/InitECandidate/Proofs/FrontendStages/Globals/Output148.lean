import InitECandidate.Proofs.FrontendStages.Declarations.Data148
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody148_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody148_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "modulus")

def globalBody148_2 : Prog (BitVec 64) :=
.seq globalBody148_0 globalBody148_1

def globalBody148_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody148_4 : Prog (BitVec 64) :=
.seq globalBody148_2 globalBody148_3

def globalData148 : Decl (BitVec 64) :=
.function { name := "secp_accel_init_block", inline := false, exported := false, params := [("base", Flapjack.Shape.one),
  ("modulus", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody148_4, returnShape := (Flapjack.Shape.one) }
def globalOutput148 := Pancake.PanLang.declToHOL globalData148
end InitECandidate.Proofs.FrontendStages.Declarations
