import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify402
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body418_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "new_nonce")

def body418_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body418_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "new_nonce")) body418_0 body418_1

def body418_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body418_4 : Prog (BitVec 64) :=
.seq body418_2 body418_3

def body418_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]))
  (Flapjack.Exp.var Flapjack.VarKind.local "idx")) body418_4 body418_1

def body418_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body418_7 : Prog (BitVec 64) :=
.seq body418_5 body418_6

def body418_8 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body418_7

def body418_9 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "e") (Flapjack.Exp.var Flapjack.VarKind.local "idx")

def body418_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "new_nonce")

def body418_11 : Prog (BitVec 64) :=
.seq body418_10 body418_3

def body418_12 : Prog (BitVec 64) :=
.seq body418_9 body418_11

def body418_13 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64]) body418_12

def body418_14 : Prog (BitVec 64) :=
.seq body418_8 body418_13

def body418_15 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body418_14

def body418_16 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])) body418_15

def body418_17 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])) body418_16

def body418_18 : Prog (BitVec 64) :=
.dec ("l") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64])) body418_17

def body418_19 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body418_18

def body418_20 : Prog (BitVec 64) :=
.seq body418_9 body418_10

def body418_21 : Prog (BitVec 64) :=
.seq body418_20 body418_3

def body418_22 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_push") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64]) body418_21

def body418_23 : Prog (BitVec 64) :=
.seq body418_8 body418_22

def body418_24 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body418_23

def body418_25 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])) body418_24

def body418_26 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])) body418_25

def body418_27 : Prog (BitVec 64) :=
.dec ("l") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64])) body418_26

def body418_28 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body418_27

def originalData418 : Decl (BitVec 64) :=
.function { name := "add_nonce_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("idx", Flapjack.Shape.one), ("new_nonce", Flapjack.Shape.one)], body := body418_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData418 : Decl (BitVec 64) :=
.function { name := "add_nonce_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("idx", Flapjack.Shape.one), ("new_nonce", Flapjack.Shape.one)], body := body418_28, returnShape := (Flapjack.Shape.one) }
def original418 := Pancake.PanLang.declToHOL originalData418
def simplified418 := Pancake.PanLang.declToHOL simplifiedData418
end InitECandidate.Proofs.FrontendStages.Declarations
