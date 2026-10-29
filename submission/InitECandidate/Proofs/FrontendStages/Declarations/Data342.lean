import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify326
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body342_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pubkey65", Flapjack.Exp.const 1#64],
    Flapjack.Exp.const 64#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body342_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out20",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 12#64],
    Flapjack.Exp.const 20#64]

def body342_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body342_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body342_4 : Prog (BitVec 64) :=
.seq body342_2 body342_3

def body342_5 : Prog (BitVec 64) :=
.seq body342_1 body342_4

def body342_6 : Prog (BitVec 64) :=
.seq body342_0 body342_5

def body342_7 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body342_6

def body342_8 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body342_7

def body342_9 : Prog (BitVec 64) :=
.seq body342_0 body342_1

def body342_10 : Prog (BitVec 64) :=
.seq body342_9 body342_2

def body342_11 : Prog (BitVec 64) :=
.seq body342_10 body342_3

def body342_12 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body342_11

def body342_13 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body342_12

def originalData342 : Decl (BitVec 64) :=
.function { name := "sender_address_from_public_key", inline := false, exported := false, params := [("pubkey65", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body342_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData342 : Decl (BitVec 64) :=
.function { name := "sender_address_from_public_key", inline := false, exported := false, params := [("pubkey65", Flapjack.Shape.one), ("out20", Flapjack.Shape.one)], body := body342_13, returnShape := (Flapjack.Shape.one) }
def original342 := Pancake.PanLang.declToHOL originalData342
def simplified342 := Pancake.PanLang.declToHOL simplifiedData342
end InitECandidate.Proofs.FrontendStages.Declarations
