import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data621
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody621_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.const 0#64)

def globalBody621_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody621_2 : Prog (BitVec 64) :=
.seq globalBody621_0 globalBody621_1

def globalBody621_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nd")) globalBody621_2

def globalBody621_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody621_5 : Prog (BitVec 64) :=
.seq globalBody621_3 globalBody621_4

def globalBody621_6 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "w")
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.load Flapjack.Shape.one (Flapjack.Exp.var Flapjack.VarKind.local "w"),
      Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
        (Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 3#64],
            Flapjack.Exp.const 8#64])])

def globalBody621_7 : Prog (BitVec 64) :=
.seq globalBody621_6 globalBody621_1

def globalBody621_8 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64),
        Flapjack.Exp.const 8#64]]) globalBody621_7

def globalBody621_9 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "nbytes", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody621_8

def globalBody621_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nbytes")) globalBody621_9

def globalBody621_11 : Prog (BitVec 64) :=
.seq globalBody621_5 globalBody621_10

def globalBody621_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def globalBody621_13 : Prog (BitVec 64) :=
.seq globalBody621_11 globalBody621_12

def globalBody621_14 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody621_13

def globalBody621_15 : Prog (BitVec 64) :=
.dec ("nd") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nbytes", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 2#64)) globalBody621_14

def globalData621 : Decl (BitVec 64) :=
.function { name := "bn_from_be", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("nbytes", Flapjack.Shape.one), ("d", Flapjack.Shape.one)], body := globalBody621_15, returnShape := (Flapjack.Shape.one) }
def globalOutput621 := Pancake.PanLang.declToHOL globalData621
end InitECandidate.Proofs.FrontendStages.Declarations
