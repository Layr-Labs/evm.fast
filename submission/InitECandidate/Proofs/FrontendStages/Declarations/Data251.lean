import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify235
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body251_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.var Flapjack.VarKind.local "flag"])

def body251_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "dst")
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.const 16#64,
          Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "flag", Flapjack.Exp.const 1#64]],
      Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "nibs")])

def body251_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 1#64)

def body251_3 : Prog (BitVec 64) :=
.seq body251_1 body251_2

def body251_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body251_0 body251_3

def body251_5 : Prog (BitVec 64) :=
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

def body251_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 2#64])

def body251_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "o"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "o", Flapjack.Exp.const 1#64])

def body251_8 : Prog (BitVec 64) :=
.seq body251_6 body251_7

def body251_9 : Prog (BitVec 64) :=
.seq body251_5 body251_8

def body251_10 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body251_9

def body251_11 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "o")

def body251_12 : Prog (BitVec 64) :=
.seq body251_10 body251_11

def body251_13 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body251_12

def body251_14 : Prog (BitVec 64) :=
.seq body251_4 body251_13

def body251_15 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body251_14

def body251_16 : Prog (BitVec 64) :=
.dec ("flag") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "is_leaf", Flapjack.Exp.const 2#64]) body251_15

def body251_17 : Prog (BitVec 64) :=
.seq body251_5 body251_6

def body251_18 : Prog (BitVec 64) :=
.seq body251_17 body251_7

def body251_19 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body251_18

def body251_20 : Prog (BitVec 64) :=
.seq body251_19 body251_11

def body251_21 : Prog (BitVec 64) :=
.dec ("o") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body251_20

def body251_22 : Prog (BitVec 64) :=
.seq body251_4 body251_21

def body251_23 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body251_22

def body251_24 : Prog (BitVec 64) :=
.dec ("flag") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "is_leaf", Flapjack.Exp.const 2#64]) body251_23

def originalData251 : Decl (BitVec 64) :=
.function { name := "nibble_list_to_compact", inline := false, exported := false, params := [("nibs", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("is_leaf", Flapjack.Shape.one), ("dst", Flapjack.Shape.one)], body := body251_16, returnShape := (Flapjack.Shape.one) }
def simplifiedData251 : Decl (BitVec 64) :=
.function { name := "nibble_list_to_compact", inline := false, exported := false, params := [("nibs", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("is_leaf", Flapjack.Shape.one), ("dst", Flapjack.Shape.one)], body := body251_24, returnShape := (Flapjack.Shape.one) }
def original251 := Pancake.PanLang.declToHOL originalData251
def simplified251 := Pancake.PanLang.declToHOL simplifiedData251
end InitECandidate.Proofs.FrontendStages.Declarations
