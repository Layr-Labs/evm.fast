import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data63
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate47
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody63_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 16#64])

def globalBody63_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64))

def globalBody63_2 : Prog (BitVec 64) :=
.seq globalBody63_0 globalBody63_1

def globalBody63_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody63_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4294901760#64])
  (Flapjack.Exp.const 0#64)) globalBody63_2 globalBody63_3

def globalBody63_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])

def globalBody63_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64))

def globalBody63_7 : Prog (BitVec 64) :=
.seq globalBody63_5 globalBody63_6

def globalBody63_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4278190080#64])
  (Flapjack.Exp.const 0#64)) globalBody63_7 globalBody63_3

def globalBody63_9 : Prog (BitVec 64) :=
.seq globalBody63_4 globalBody63_8

def globalBody63_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 4#64])

def globalBody63_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 4#64))

def globalBody63_12 : Prog (BitVec 64) :=
.seq globalBody63_10 globalBody63_11

def globalBody63_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 4026531840#64])
  (Flapjack.Exp.const 0#64)) globalBody63_12 globalBody63_3

def globalBody63_14 : Prog (BitVec 64) :=
.seq globalBody63_9 globalBody63_13

def globalBody63_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 2#64])

def globalBody63_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 2#64))

def globalBody63_17 : Prog (BitVec 64) :=
.seq globalBody63_15 globalBody63_16

def globalBody63_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 3221225472#64])
  (Flapjack.Exp.const 0#64)) globalBody63_17 globalBody63_3

def globalBody63_19 : Prog (BitVec 64) :=
.seq globalBody63_14 globalBody63_18

def globalBody63_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "s"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 1#64])

def globalBody63_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 2147483648#64])
  (Flapjack.Exp.const 0#64)) globalBody63_20 globalBody63_3

def globalBody63_22 : Prog (BitVec 64) :=
.seq globalBody63_19 globalBody63_21

def globalBody63_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody63_24 : Prog (BitVec 64) :=
.seq globalBody63_22 globalBody63_23

def globalBody63_25 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody63_24

def globalData63 : Decl (BitVec 64) :=
.function { name := "nlz32", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := globalBody63_25, returnShape := (Flapjack.Shape.one) }
def globalOutput63 := Pancake.PanLang.declToHOL globalData63
end InitECandidate.Proofs.FrontendStages.Declarations
