import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify164
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body180_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "pub64", Flapjack.Exp.const 64#64,
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body180_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out20",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 12#64],
    Flapjack.Exp.const 20#64]

def body180_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body180_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body180_4 : Prog (BitVec 64) :=
.seq body180_2 body180_3

def body180_5 : Prog (BitVec 64) :=
.seq body180_1 body180_4

def body180_6 : Prog (BitVec 64) :=
.seq body180_0 body180_5

def body180_7 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body180_6

def body180_8 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body180_7

def body180_9 : Prog (BitVec 64) :=
.seq body180_0 body180_1

def body180_10 : Prog (BitVec 64) :=
.seq body180_9 body180_2

def body180_11 : Prog (BitVec 64) :=
.seq body180_10 body180_3

def body180_12 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body180_11

def body180_13 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body180_12

def originalData180 : Decl (BitVec 64) :=
.function { name := "secp256k1_address_of_point", inline := false, exported := false, params := [("pub64", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body180_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData180 : Decl (BitVec 64) :=
.function { name := "secp256k1_address_of_point", inline := false, exported := false, params := [("pub64", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body180_13, returnShape := (Flapjack.Shape.one) }
def original180 := Pancake.PanLang.declToHOL originalData180
def simplified180 := Pancake.PanLang.declToHOL simplifiedData180
end InitECandidate.Proofs.FrontendStages.Declarations
