import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify49
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body65_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "p")
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def body65_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def body65_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def body65_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def body65_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def body65_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def body65_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64])

def body65_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 32#64))

def body65_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body65_9 : Prog (BitVec 64) :=
.seq body65_7 body65_8

def body65_10 : Prog (BitVec 64) :=
.seq body65_6 body65_9

def body65_11 : Prog (BitVec 64) :=
.seq body65_5 body65_10

def body65_12 : Prog (BitVec 64) :=
.seq body65_4 body65_11

def body65_13 : Prog (BitVec 64) :=
.seq body65_3 body65_12

def body65_14 : Prog (BitVec 64) :=
.seq body65_2 body65_13

def body65_15 : Prog (BitVec 64) :=
.seq body65_1 body65_14

def body65_16 : Prog (BitVec 64) :=
.seq body65_0 body65_15

def body65_17 : Prog (BitVec 64) :=
.seq body65_0 body65_1

def body65_18 : Prog (BitVec 64) :=
.seq body65_17 body65_2

def body65_19 : Prog (BitVec 64) :=
.seq body65_18 body65_3

def body65_20 : Prog (BitVec 64) :=
.seq body65_19 body65_4

def body65_21 : Prog (BitVec 64) :=
.seq body65_20 body65_5

def body65_22 : Prog (BitVec 64) :=
.seq body65_21 body65_6

def body65_23 : Prog (BitVec 64) :=
.seq body65_22 body65_7

def body65_24 : Prog (BitVec 64) :=
.seq body65_23 body65_8

def originalData65 : Decl (BitVec 64) :=
.function { name := "u256_to_digits", inline := false, exported := false, params := [("p", Flapjack.Shape.one),
  ("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body65_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData65 : Decl (BitVec 64) :=
.function { name := "u256_to_digits", inline := false, exported := false, params := [("p", Flapjack.Shape.one),
  ("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body65_24, returnShape := (Flapjack.Shape.one) }
def original65 := Pancake.PanLang.declToHOL originalData65
def simplified65 := Pancake.PanLang.declToHOL simplifiedData65
end InitECandidate.Proofs.FrontendStages.Declarations
