import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data111
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate89
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody111_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def globalBody111_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def globalBody111_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "end"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))

def globalBody111_3 : Prog (BitVec 64) :=
.seq globalBody111_1 globalBody111_2

def globalBody111_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64]))

def globalBody111_5 : Prog (BitVec 64) :=
.seq globalBody111_3 globalBody111_4

def globalBody111_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) globalBody111_0 globalBody111_5

def globalBody111_7 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "rec") (Flapjack.Exp.var Flapjack.VarKind.local "after")

def globalBody111_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "end")

def globalBody111_9 : Prog (BitVec 64) :=
.seq globalBody111_7 globalBody111_8

def globalBody111_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def globalBody111_11 : Prog (BitVec 64) :=
.seq globalBody111_9 globalBody111_10

def globalBody111_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def globalBody111_13 : Prog (BitVec 64) :=
.seq globalBody111_11 globalBody111_12

def globalBody111_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos" (Flapjack.Exp.var Flapjack.VarKind.local "payload")

def globalBody111_15 : Prog (BitVec 64) :=
.seq globalBody111_13 globalBody111_14

def globalBody111_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "end" (Flapjack.Exp.var Flapjack.VarKind.local "after")

def globalBody111_17 : Prog (BitVec 64) :=
.seq globalBody111_15 globalBody111_16

def globalBody111_18 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) globalBody111_17

def globalBody111_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pos" (Flapjack.Exp.var Flapjack.VarKind.local "after")

def globalBody111_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "h"))
  (Flapjack.Exp.const 0#64)) globalBody111_18 globalBody111_19

def globalBody111_21 : Prog (BitVec 64) :=
.dec ("after") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "payload",
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")]) globalBody111_20

def globalBody111_22 : Prog (BitVec 64) :=
.dec ("payload") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pos", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h")]) globalBody111_21

def globalBody111_23 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item_header") ([Flapjack.Exp.var Flapjack.VarKind.local "pos",
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "end", Flapjack.Exp.var Flapjack.VarKind.local "pos"]]) globalBody111_22

def globalBody111_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pos")
  (Flapjack.Exp.var Flapjack.VarKind.local "end")) globalBody111_6 globalBody111_23

def globalBody111_25 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) globalBody111_24

def globalBody111_26 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody111_27 : Prog (BitVec 64) :=
.seq globalBody111_25 globalBody111_26

def globalBody111_28 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody111_27

def globalBody111_29 : Prog (BitVec 64) :=
.dec ("end") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody111_28

def globalBody111_30 : Prog (BitVec 64) :=
.dec ("pos") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") globalBody111_29

def globalBody111_31 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody111_30

def globalData111 : Decl (BitVec 64) :=
.function { name := "_rlp_validate_items_body", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody111_31, returnShape := (Flapjack.Shape.one) }
def globalOutput111 := Pancake.PanLang.declToHOL globalData111
end InitECandidate.Proofs.FrontendStages.Declarations
