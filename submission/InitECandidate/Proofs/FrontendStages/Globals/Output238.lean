import InitECandidate.Proofs.FrontendStages.Declarations.Data238
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody238_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody238_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody238_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "gas_limit")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit", Flapjack.Exp.var Flapjack.VarKind.local "max_delta"])) globalBody238_0 globalBody238_1

def globalBody238_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "gas_limit", Flapjack.Exp.var Flapjack.VarKind.local "max_delta"])) globalBody238_0 globalBody238_1

def globalBody238_4 : Prog (BitVec 64) :=
.seq globalBody238_2 globalBody238_3

def globalBody238_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas_limit") (Flapjack.Exp.const 5000#64)) globalBody238_0 globalBody238_1

def globalBody238_6 : Prog (BitVec 64) :=
.seq globalBody238_4 globalBody238_5

def globalBody238_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody238_8 : Prog (BitVec 64) :=
.seq globalBody238_6 globalBody238_7

def globalBody238_9 : Prog (BitVec 64) :=
.decCall ("max_delta") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit", Flapjack.Exp.const 1024#64]) globalBody238_8

def globalData238 : Decl (BitVec 64) := .function { name := "check_gas_limit", inline := false, exported := false, params := [("gas_limit", Flapjack.Shape.one), ("parent_gas_limit", Flapjack.Shape.one)], body := globalBody238_9, returnShape := (Flapjack.Shape.one) }
def globalOutput238 := Pancake.PanLang.declToHOL globalData238
end InitECandidate.Proofs.FrontendStages.Declarations
