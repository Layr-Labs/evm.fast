import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify47
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body63_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 16#64])

def body63_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64))

def body63_2 : Prog (BitVec 64) :=
.seq body63_0 body63_1

def body63_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body63_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4294901760#64])
  (Flapjack.Exp.const 0#64)) body63_2 body63_3

def body63_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])

def body63_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64))

def body63_7 : Prog (BitVec 64) :=
.seq body63_5 body63_6

def body63_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4278190080#64])
  (Flapjack.Exp.const 0#64)) body63_7 body63_3

def body63_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 4#64])

def body63_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 4#64))

def body63_11 : Prog (BitVec 64) :=
.seq body63_9 body63_10

def body63_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4026531840#64])
  (Flapjack.Exp.const 0#64)) body63_11 body63_3

def body63_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 2#64])

def body63_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 2#64))

def body63_15 : Prog (BitVec 64) :=
.seq body63_13 body63_14

def body63_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 3221225472#64])
  (Flapjack.Exp.const 0#64)) body63_15 body63_3

def body63_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 1#64])

def body63_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 2147483648#64])
  (Flapjack.Exp.const 0#64)) body63_17 body63_3

def body63_19 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "s")

def body63_20 : Prog (BitVec 64) :=
.seq body63_18 body63_19

def body63_21 : Prog (BitVec 64) :=
.seq body63_16 body63_20

def body63_22 : Prog (BitVec 64) :=
.seq body63_12 body63_21

def body63_23 : Prog (BitVec 64) :=
.seq body63_8 body63_22

def body63_24 : Prog (BitVec 64) :=
.seq body63_4 body63_23

def body63_25 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body63_24

def body63_26 : Prog (BitVec 64) :=
.seq body63_4 body63_8

def body63_27 : Prog (BitVec 64) :=
.seq body63_26 body63_12

def body63_28 : Prog (BitVec 64) :=
.seq body63_27 body63_16

def body63_29 : Prog (BitVec 64) :=
.seq body63_28 body63_18

def body63_30 : Prog (BitVec 64) :=
.seq body63_29 body63_19

def body63_31 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body63_30

def originalData63 : Decl (BitVec 64) :=
.function { name := "nlz32", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body63_25, returnShape := (Flapjack.Shape.one) }
def simplifiedData63 : Decl (BitVec 64) :=
.function { name := "nlz32", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body63_31, returnShape := (Flapjack.Shape.one) }
def original63 := Pancake.PanLang.declToHOL originalData63
def simplified63 := Pancake.PanLang.declToHOL simplifiedData63
end InitECandidate.Proofs.FrontendStages.Declarations
