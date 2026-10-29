import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data78
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate62
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody78_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 32#64])

def globalBody78_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64))

def globalBody78_2 : Prog (BitVec 64) :=
.seq globalBody78_0 globalBody78_1

def globalBody78_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody78_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64))
  (Flapjack.Exp.const 0#64)) globalBody78_2 globalBody78_3

def globalBody78_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 16#64])

def globalBody78_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64))

def globalBody78_7 : Prog (BitVec 64) :=
.seq globalBody78_5 globalBody78_6

def globalBody78_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64))
  (Flapjack.Exp.const 0#64)) globalBody78_7 globalBody78_3

def globalBody78_9 : Prog (BitVec 64) :=
.seq globalBody78_4 globalBody78_8

def globalBody78_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 8#64])

def globalBody78_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64))

def globalBody78_12 : Prog (BitVec 64) :=
.seq globalBody78_10 globalBody78_11

def globalBody78_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64))
  (Flapjack.Exp.const 0#64)) globalBody78_12 globalBody78_3

def globalBody78_14 : Prog (BitVec 64) :=
.seq globalBody78_9 globalBody78_13

def globalBody78_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 4#64])

def globalBody78_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 4#64))

def globalBody78_17 : Prog (BitVec 64) :=
.seq globalBody78_15 globalBody78_16

def globalBody78_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 4#64))
  (Flapjack.Exp.const 0#64)) globalBody78_17 globalBody78_3

def globalBody78_19 : Prog (BitVec 64) :=
.seq globalBody78_14 globalBody78_18

def globalBody78_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 2#64])

def globalBody78_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 2#64))

def globalBody78_22 : Prog (BitVec 64) :=
.seq globalBody78_20 globalBody78_21

def globalBody78_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 2#64))
  (Flapjack.Exp.const 0#64)) globalBody78_22 globalBody78_3

def globalBody78_24 : Prog (BitVec 64) :=
.seq globalBody78_19 globalBody78_23

def globalBody78_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "n"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])

def globalBody78_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 1#64))

def globalBody78_27 : Prog (BitVec 64) :=
.seq globalBody78_25 globalBody78_26

def globalBody78_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 1#64))
  (Flapjack.Exp.const 0#64)) globalBody78_27 globalBody78_3

def globalBody78_29 : Prog (BitVec 64) :=
.seq globalBody78_24 globalBody78_28

def globalBody78_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "x"])

def globalBody78_31 : Prog (BitVec 64) :=
.seq globalBody78_29 globalBody78_30

def globalBody78_32 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody78_31

def globalData78 : Decl (BitVec 64) :=
.function { name := "bit_length64", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := globalBody78_32, returnShape := (Flapjack.Shape.one) }
def globalOutput78 := Pancake.PanLang.declToHOL globalData78
end InitECandidate.Proofs.FrontendStages.Declarations
