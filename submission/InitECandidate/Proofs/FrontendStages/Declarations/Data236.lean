import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify220
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body236_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body236_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body236_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "gas_limit")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit", Flapjack.Exp.var Flapjack.VarKind.local "max_delta"])) body236_0 body236_1

def body236_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "gas_limit", Flapjack.Exp.var Flapjack.VarKind.local "max_delta"])) body236_0 body236_1

def body236_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "gas_limit") (Flapjack.Exp.const 5000#64)) body236_0 body236_1

def body236_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body236_6 : Prog (BitVec 64) :=
.seq body236_4 body236_5

def body236_7 : Prog (BitVec 64) :=
.seq body236_3 body236_6

def body236_8 : Prog (BitVec 64) :=
.seq body236_2 body236_7

def body236_9 : Prog (BitVec 64) :=
.decCall ("max_delta") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit", Flapjack.Exp.const 1024#64]) body236_8

def body236_10 : Prog (BitVec 64) :=
.seq body236_2 body236_3

def body236_11 : Prog (BitVec 64) :=
.seq body236_10 body236_4

def body236_12 : Prog (BitVec 64) :=
.seq body236_11 body236_5

def body236_13 : Prog (BitVec 64) :=
.decCall ("max_delta") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "parent_gas_limit", Flapjack.Exp.const 1024#64]) body236_12

def originalData236 : Decl (BitVec 64) :=
.function { name := "check_gas_limit", inline := false, exported := false, params := [("gas_limit", Flapjack.Shape.one), ("parent_gas_limit", Flapjack.Shape.one)], body := body236_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData236 : Decl (BitVec 64) :=
.function { name := "check_gas_limit", inline := false, exported := false, params := [("gas_limit", Flapjack.Shape.one), ("parent_gas_limit", Flapjack.Shape.one)], body := body236_13, returnShape := (Flapjack.Shape.one) }
def original236 := Pancake.PanLang.declToHOL originalData236
def simplified236 := Pancake.PanLang.declToHOL simplifiedData236
end InitECandidate.Proofs.FrontendStages.Declarations
