import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify582
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body598_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "buf") (Flapjack.Exp.const 255#64)

def body598_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64]

def body598_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 21#64],
    Flapjack.Exp.var Flapjack.VarKind.local "salt", Flapjack.Exp.const 32#64]

def body598_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 53#64]]

def body598_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 85#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body598_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 12#64],
    Flapjack.Exp.const 20#64]

def body598_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body598_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body598_8 : Prog (BitVec 64) :=
.seq body598_6 body598_7

def body598_9 : Prog (BitVec 64) :=
.seq body598_5 body598_8

def body598_10 : Prog (BitVec 64) :=
.seq body598_4 body598_9

def body598_11 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body598_10

def body598_12 : Prog (BitVec 64) :=
.seq body598_3 body598_11

def body598_13 : Prog (BitVec 64) :=
.seq body598_2 body598_12

def body598_14 : Prog (BitVec 64) :=
.seq body598_1 body598_13

def body598_15 : Prog (BitVec 64) :=
.seq body598_0 body598_14

def body598_16 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body598_15

def body598_17 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body598_16

def body598_18 : Prog (BitVec 64) :=
.seq body598_0 body598_1

def body598_19 : Prog (BitVec 64) :=
.seq body598_18 body598_2

def body598_20 : Prog (BitVec 64) :=
.seq body598_19 body598_3

def body598_21 : Prog (BitVec 64) :=
.seq body598_4 body598_5

def body598_22 : Prog (BitVec 64) :=
.seq body598_21 body598_6

def body598_23 : Prog (BitVec 64) :=
.seq body598_22 body598_7

def body598_24 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body598_23

def body598_25 : Prog (BitVec 64) :=
.seq body598_20 body598_24

def body598_26 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body598_25

def body598_27 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body598_26

def originalData598 : Decl (BitVec 64) :=
.function { name := "compute_create2_contract_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("salt", Flapjack.Shape.one), ("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body598_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData598 : Decl (BitVec 64) :=
.function { name := "compute_create2_contract_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("salt", Flapjack.Shape.one), ("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := body598_27, returnShape := (Flapjack.Shape.one) }
def original598 := Pancake.PanLang.declToHOL originalData598
def simplified598 := Pancake.PanLang.declToHOL simplifiedData598
end InitECandidate.Proofs.FrontendStages.Declarations
