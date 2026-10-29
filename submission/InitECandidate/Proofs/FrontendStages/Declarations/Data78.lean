import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify62
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body78_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64])

def body78_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64))

def body78_2 : Prog (BitVec 64) :=
.seq body78_0 body78_1

def body78_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body78_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64))
  (Flapjack.Exp.const 0#64)) body78_2 body78_3

def body78_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 16#64])

def body78_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64))

def body78_7 : Prog (BitVec 64) :=
.seq body78_5 body78_6

def body78_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64))
  (Flapjack.Exp.const 0#64)) body78_7 body78_3

def body78_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64])

def body78_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64))

def body78_11 : Prog (BitVec 64) :=
.seq body78_9 body78_10

def body78_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64))
  (Flapjack.Exp.const 0#64)) body78_11 body78_3

def body78_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 4#64])

def body78_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 4#64))

def body78_15 : Prog (BitVec 64) :=
.seq body78_13 body78_14

def body78_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 4#64))
  (Flapjack.Exp.const 0#64)) body78_15 body78_3

def body78_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64])

def body78_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 2#64))

def body78_19 : Prog (BitVec 64) :=
.seq body78_17 body78_18

def body78_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 2#64))
  (Flapjack.Exp.const 0#64)) body78_19 body78_3

def body78_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def body78_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 1#64))

def body78_23 : Prog (BitVec 64) :=
.seq body78_21 body78_22

def body78_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 1#64))
  (Flapjack.Exp.const 0#64)) body78_23 body78_3

def body78_25 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "x"])

def body78_26 : Prog (BitVec 64) :=
.seq body78_24 body78_25

def body78_27 : Prog (BitVec 64) :=
.seq body78_20 body78_26

def body78_28 : Prog (BitVec 64) :=
.seq body78_16 body78_27

def body78_29 : Prog (BitVec 64) :=
.seq body78_12 body78_28

def body78_30 : Prog (BitVec 64) :=
.seq body78_8 body78_29

def body78_31 : Prog (BitVec 64) :=
.seq body78_4 body78_30

def body78_32 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body78_31

def body78_33 : Prog (BitVec 64) :=
.seq body78_4 body78_8

def body78_34 : Prog (BitVec 64) :=
.seq body78_33 body78_12

def body78_35 : Prog (BitVec 64) :=
.seq body78_34 body78_16

def body78_36 : Prog (BitVec 64) :=
.seq body78_35 body78_20

def body78_37 : Prog (BitVec 64) :=
.seq body78_36 body78_24

def body78_38 : Prog (BitVec 64) :=
.seq body78_37 body78_25

def body78_39 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body78_38

def originalData78 : Decl (BitVec 64) :=
.function { name := "bit_length64", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body78_32, returnShape := (Flapjack.Shape.one) }
def simplifiedData78 : Decl (BitVec 64) :=
.function { name := "bit_length64", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := body78_39, returnShape := (Flapjack.Shape.one) }
def original78 := Pancake.PanLang.declToHOL originalData78
def simplified78 := Pancake.PanLang.declToHOL simplifiedData78
end InitECandidate.Proofs.FrontendStages.Declarations
