import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data859
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody859_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody859_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "fb"
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "txs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]])))

def globalBody859_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody859_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64)) globalBody859_1 globalBody859_2

def globalBody859_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "el"), none)) "rlp_bytes_encoded_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "fb", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody859_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "n") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "fb") (Flapjack.Exp.const 192#64)])) globalBody859_4 globalBody859_2

def globalBody859_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "tl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "tl", Flapjack.Exp.var Flapjack.VarKind.local "el"])

def globalBody859_7 : Prog (BitVec 64) :=
.seq globalBody859_5 globalBody859_6

def globalBody859_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody859_9 : Prog (BitVec 64) :=
.seq globalBody859_7 globalBody859_8

def globalBody859_10 : Prog (BitVec 64) :=
.dec ("el") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") globalBody859_9

def globalBody859_11 : Prog (BitVec 64) :=
.seq globalBody859_3 globalBody859_10

def globalBody859_12 : Prog (BitVec 64) :=
.dec ("fb") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody859_11

def globalBody859_13 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "txs",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
      Flapjack.Exp.const 8#64])) globalBody859_12

def globalBody859_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) globalBody859_13

def globalBody859_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "tl"])

def globalBody859_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.const 1#64])

def globalBody859_17 : Prog (BitVec 64) :=
.seq globalBody859_15 globalBody859_16

def globalBody859_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def globalBody859_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "wl"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "wl", Flapjack.Exp.var Flapjack.VarKind.local "wlen"])

def globalBody859_20 : Prog (BitVec 64) :=
.seq globalBody859_19 globalBody859_8

def globalBody859_21 : Prog (BitVec 64) :=
.decCall ("wlen") (Flapjack.Shape.one) ("withdrawal_rlp_len") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64]),
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]]]) globalBody859_20

def globalBody859_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) globalBody859_21

def globalBody859_23 : Prog (BitVec 64) :=
.seq globalBody859_18 globalBody859_22

def globalBody859_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "wl"]

def globalBody859_25 : Prog (BitVec 64) :=
.seq globalBody859_23 globalBody859_24

def globalBody859_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "total"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl",
      Flapjack.Exp.var Flapjack.VarKind.local "wl"])

def globalBody859_27 : Prog (BitVec 64) :=
.seq globalBody859_25 globalBody859_26

def globalBody859_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "hl"), none)) "rlp_list_header_len"
  [Flapjack.Exp.var Flapjack.VarKind.local "total"]

def globalBody859_29 : Prog (BitVec 64) :=
.seq globalBody859_27 globalBody859_28

def globalBody859_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "total", Flapjack.Exp.var Flapjack.VarKind.local "hl"])

def globalBody859_31 : Prog (BitVec 64) :=
.seq globalBody859_29 globalBody859_30

def globalBody859_32 : Prog (BitVec 64) :=
.dec ("wl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody859_31

def globalBody859_33 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) globalBody859_32

def globalBody859_34 : Prog (BitVec 64) :=
.seq globalBody859_17 globalBody859_33

def globalBody859_35 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "tl"]) globalBody859_34

def globalBody859_36 : Prog (BitVec 64) :=
.seq globalBody859_14 globalBody859_35

def globalBody859_37 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody859_36

def globalBody859_38 : Prog (BitVec 64) :=
.dec ("tl") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody859_37

def globalBody859_39 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) globalBody859_38

def globalBody859_40 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) globalBody859_39

def globalBody859_41 : Prog (BitVec 64) :=
.dec ("total") (Flapjack.Shape.one) (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "he")) globalBody859_40

def globalBody859_42 : Prog (BitVec 64) :=
.seq globalBody859_0 globalBody859_41

def globalBody859_43 : Prog (BitVec 64) :=
.decCall ("he") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("encode_header") ([Flapjack.Exp.var Flapjack.VarKind.local "hdr"]) globalBody859_42

def globalBody859_44 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody859_43

def globalData859 : Decl (BitVec 64) :=
.function { name := "block_rlp_length", inline := false, exported := false, params := [("hdr", Flapjack.Shape.one), ("pl", Flapjack.Shape.one)], body := globalBody859_44, returnShape := (Flapjack.Shape.one) }
def globalOutput859 := Pancake.PanLang.declToHOL globalData859
end InitECandidate.Proofs.FrontendStages.Declarations
