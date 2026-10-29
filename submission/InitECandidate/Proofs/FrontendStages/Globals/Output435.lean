import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data435
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody435_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "items"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "items", Flapjack.Exp.const 1#64,
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.const 24#64])])

def globalBody435_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "items"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "items", Flapjack.Exp.const 1#64])

def globalBody435_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody435_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "hasw") (Flapjack.Exp.const 0#64)) globalBody435_1 globalBody435_2

def globalBody435_4 : Prog (BitVec 64) :=
.decCall ("hasw") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "sc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e")]) globalBody435_3

def globalBody435_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"))
  (Flapjack.Exp.const 0#64)) globalBody435_4 globalBody435_2

def globalBody435_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody435_7 : Prog (BitVec 64) :=
.seq globalBody435_5 globalBody435_6

def globalBody435_8 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "sr", Flapjack.Exp.var Flapjack.VarKind.local "j"]) globalBody435_7

def globalBody435_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "rcap")) globalBody435_8

def globalBody435_10 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody435_9

def globalBody435_11 : Prog (BitVec 64) :=
.dec ("rcap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sr", Flapjack.Exp.const 24#64])) globalBody435_10

def globalBody435_12 : Prog (BitVec 64) :=
.seq globalBody435_0 globalBody435_11

def globalBody435_13 : Prog (BitVec 64) :=
.dec ("sr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64])) globalBody435_12

def globalBody435_14 : Prog (BitVec 64) :=
.dec ("sc") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])) globalBody435_13

def globalBody435_15 : Prog (BitVec 64) :=
.dec ("ad") (Flapjack.Shape.one) (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")) globalBody435_14

def globalBody435_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody435_15 globalBody435_2

def globalBody435_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody435_18 : Prog (BitVec 64) :=
.seq globalBody435_16 globalBody435_17

def globalBody435_19 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody435_18

def globalBody435_20 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody435_19

def globalBody435_21 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 40#64)

def globalBody435_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "lim")
  (Flapjack.Exp.var Flapjack.VarKind.local "items")) globalBody435_21 globalBody435_2

def globalBody435_23 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody435_24 : Prog (BitVec 64) :=
.seq globalBody435_22 globalBody435_23

def globalBody435_25 : Prog (BitVec 64) :=
.decCall ("lim") (Flapjack.Shape.one) ("udiv") ([Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit", Flapjack.Exp.const 2000#64]) globalBody435_24

def globalBody435_26 : Prog (BitVec 64) :=
.seq globalBody435_20 globalBody435_25

def globalBody435_27 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody435_26

def globalBody435_28 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64]),
      Flapjack.Exp.const 24#64])) globalBody435_27

def globalBody435_29 : Prog (BitVec 64) :=
.dec ("items") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody435_28

def globalData435 : Decl (BitVec 64) :=
.function { name := "validate_block_access_list_gas_limit", inline := false, exported := false, params := [("block_gas_limit", Flapjack.Shape.one)], body := globalBody435_29, returnShape := (Flapjack.Shape.one) }
def globalOutput435 := Pancake.PanLang.declToHOL globalData435
end InitECandidate.Proofs.FrontendStages.Declarations
