import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify152
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body168_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body168_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body168_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body168_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body168_4 : Prog (BitVec 64) :=
.seq body168_2 body168_3

def body168_5 : Prog (BitVec 64) :=
.seq body168_1 body168_4

def body168_6 : Prog (BitVec 64) :=
.seq body168_0 body168_5

def body168_7 : Prog (BitVec 64) :=
.seq body168_0 body168_1

def body168_8 : Prog (BitVec 64) :=
.seq body168_7 body168_2

def body168_9 : Prog (BitVec 64) :=
.seq body168_8 body168_3

def originalData168 : Decl (BitVec 64) :=
.function { name := "ec_set_infinity", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body168_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData168 : Decl (BitVec 64) :=
.function { name := "ec_set_infinity", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body168_9, returnShape := (Flapjack.Shape.one) }
def original168 := Pancake.PanLang.declToHOL originalData168
def simplified168 := Pancake.PanLang.declToHOL simplifiedData168
end InitECandidate.Proofs.FrontendStages.Declarations
