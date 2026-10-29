import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data251
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody251_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.var Flapjack.VarKind.local "flag"])

def globalBody251_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.const 16#64,
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "flag", Flapjack.Exp.const 1#64]],
      Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "nibs")])

def globalBody251_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 1#64)

def globalBody251_3 : Prog (BitVec 64) :=
.seq globalBody251_1 globalBody251_2

def globalBody251_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) globalBody251_0 globalBody251_3

def globalBody251_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.var Flapjack.VarKind.local "o"])
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.loadByte
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "nibs", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
        (Flapjack.Exp.const 4#64),
      Flapjack.Exp.loadByte
        (Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "nibs", Flapjack.Exp.var Flapjack.VarKind.local "i",
            Flapjack.Exp.const 1#64])])

def globalBody251_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 2#64])

def globalBody251_7 : Prog (BitVec 64) :=
.seq globalBody251_5 globalBody251_6

def globalBody251_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "o"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o", Flapjack.Exp.const 1#64])

def globalBody251_9 : Prog (BitVec 64) :=
.seq globalBody251_7 globalBody251_8

def globalBody251_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody251_9

def globalBody251_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "o")

def globalBody251_12 : Prog (BitVec 64) :=
.seq globalBody251_10 globalBody251_11

def globalBody251_13 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody251_12

def globalBody251_14 : Prog (BitVec 64) :=
.seq globalBody251_4 globalBody251_13

def globalBody251_15 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody251_14

def globalBody251_16 : Prog (BitVec 64) :=
.dec ("flag") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "is_leaf", Flapjack.Exp.const 2#64]) globalBody251_15

def globalData251 : Decl (BitVec 64) :=
.function { name := "nibble_list_to_compact", inline := false, exported := false, params := [("nibs", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("is_leaf", Flapjack.Shape.one), ("dst", Flapjack.Shape.one)], body := globalBody251_16, returnShape := (Flapjack.Shape.one) }
def globalOutput251 := Pancake.PanLang.declToHOL globalData251
end InitECandidate.Proofs.FrontendStages.Declarations
